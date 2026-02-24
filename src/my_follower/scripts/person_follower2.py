#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import actionlib
import math
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from object_msgs.msg import ObjectsInBoxes
from tf.transformations import quaternion_from_euler

class SmartNavFollower:
    def __init__(self):
        rospy.init_node('smart_nav_follower_node')
        
        # 1. move_base(네비게이션 두뇌)에 목표를 하달할 클라이언트 생성
        self.client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        rospy.loginfo("네비게이션 두뇌(move_base)가 켜질 때까지 기다립니다...")
        self.client.wait_for_server()
        rospy.loginfo("move_base 연결 완료! 지휘 준비 끝.")

        # 2. OpenVINO 사람 인식 데이터 구독
        self.sub = rospy.Subscriber('/ros_openvino_toolkit/reidentified_persons', ObjectsInBoxes, self.callback)
        
        self.target_id = "1"
        self.image_width = 640
        self.last_goal_time = rospy.Time.now()

    def callback(self, msg):
        target_person = None

        # ID 0번 찾기
        for obj in msg.objects_vector:
            if self.target_id in obj.object.object_name:
                target_person = obj
                break

        if target_person is not None:
            # 목표물 위치 갱신은 2초에 한 번씩만! (경로 계산할 시간을 줘야 로봇이 버벅대지 않음)
            current_time = rospy.Time.now()
            if (current_time - self.last_goal_time).to_sec() < 2.0:
                rospy.loginfo("목표 갱신 대기 중...")
                return

            self.last_goal_time = current_time

            roi = target_person.roi
            x_center = roi.x_offset + (roi.width / 2)
            area = roi.width * roi.height

            # [핵심] 리얼센스 뎁스(거리)나 박스 크기를 이용해 좌표(x, y) 계산
            # (여기서는 박스 면적을 거리로 환산하는 방식을 사용. 완벽한 뎁스 연결 전 임시 계산법)
            # 면적이 작을수록(멀수록) 목표점을 앞으로 길게 잡음
            if area < 40000:
                target_distance = 1.5  # 사람이 멀면 1.5m 앞을 목표로
            elif area < 80000:
                target_distance = 1.0  # 적당하면 1.0m 앞을 목표로
            else:
                rospy.loginfo("ID %s와 충분히 가깝습니다. 대기.", self.target_id)
                return # 너무 가까우면 새 목표를 주지 않고 정지

            # 중심에서 벗어난 정도를 각도(라디안)로 변환
            error_x = (self.image_width / 2) - x_center
            target_angle = error_x * 0.0025

            # 삼각함수로 로봇 기준(base_link) x(앞뒤), y(좌우) 좌표 계산
            # 안전거리 유지를 위해 계산된 거리에서 0.5m를 뺀 곳을 목표로 잡습니다.
            safe_distance = target_distance - 0.5 
            goal_x = safe_distance * math.cos(target_angle)
            goal_y = safe_distance * math.sin(target_angle)

            # 3. 목표점(Goal) 생성 및 전송
            goal = MoveBaseGoal()
            # 로봇 자신의 현재 위치(base_link)를 기준으로 목표를 설정! (아주 중요)
            goal.target_pose.header.frame_id = "base_link"
            goal.target_pose.header.stamp = rospy.Time.now()

            # x, y 좌표 입력
            goal.target_pose.pose.position.x = goal_x
            goal.target_pose.pose.position.y = goal_y

            # 로봇이 목표점에 도착했을 때 바라볼 방향(사람이 있는 각도)
            q = quaternion_from_euler(0, 0, target_angle)
            goal.target_pose.pose.orientation.x = q[0]
            goal.target_pose.pose.orientation.y = q[1]
            goal.target_pose.pose.orientation.z = q[2]
            goal.target_pose.pose.orientation.w = q[3]

            rospy.loginfo("새로운 목표점 하달! 앞쪽 %.2fm, 좌우 %.2fm 이동 후 대기", goal_x, goal_y)
            
            # 네비게이션으로 쏴주기!
            self.client.send_goal(goal)

if __name__ == '__main__':
    try:
        SmartNavFollower()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass