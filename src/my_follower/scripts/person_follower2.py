#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
import actionlib
import math
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from object_msgs.msg import ObjectsInBoxes
from tf.transformations import quaternion_from_euler

class SimplePersonFollower:
    def __init__(self):
        rospy.init_node('simple_person_follower_node')
        
        self.client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
        rospy.loginfo("네비게이션 두뇌(move_base) 대기 중...")
        self.client.wait_for_server()
        rospy.loginfo("move_base 연결 완료! 이제 사람이 보이면 무조건 따라갑니다.")

        # 카메라 데이터를 받는 구독자 (토픽 이름은 기존과 동일)
        self.sub = rospy.Subscriber('/ros_openvino_toolkit/reidentified_persons', ObjectsInBoxes, self.callback)
        
        self.image_width = 640
        self.last_goal_time = rospy.Time.now()

    def callback(self, msg):
        # 1. 사람이 아무도 안 보이면 무시
        if not msg.objects_vector:
            return

        # 2. 사람이 여러 명일 수 있으니, 화면에서 가장 '박스가 큰(=가장 가까운)' 사람을 고릅니다.
        target_person = None
        max_area = 0

        for obj in msg.objects_vector:
            area = obj.roi.width * obj.roi.height
            if area > max_area:
                max_area = area
                target_person = obj

        if target_person is None:
            return

        # 3. 목표 갱신 주기 (로봇이 너무 버벅거리지 않게 1초에 한 번만 명령을 내림)
        current_time = rospy.Time.now()
        if (current_time - self.last_goal_time).to_sec() < 1.0:
            return

        self.last_goal_time = current_time

        # 4. 선택된 사람의 위치와 크기 계산
        roi = target_person.roi
        x_center = roi.x_offset + (roi.width / 2)
        area = roi.width * roi.height  # 이 면적(Area) 값이 거리 조절의 핵심!

        # --- 거리 계산 (면적 기준) ---
        # 박스 크기가 작으면 멀리 있다는 뜻이므로 앞으로 가고, 
        # 박스 크기가 너무 크면 코앞에 있다는 뜻이므로 멈춥니다.
        if area < 40000:
            target_distance = 1.0  # 멀리 있음 -> 1.0m 앞으로 가라
        elif area < 100000:
            target_distance = 0.5  # 중간 거리 -> 0.5m 앞으로 가라
        else:
            rospy.loginfo("✋ 사람이 충분히 가깝습니다! (크기: %d) 정지 대기.", area)
            return

        # --- 각도 계산 ---
        error_x = (self.image_width / 2) - x_center
        target_angle = error_x * 0.0025 # 사람을 화면 중앙에 맞추기 위한 회전각

        goal_x = target_distance * math.cos(target_angle)
        goal_y = target_distance * math.sin(target_angle)

        # 5. 운전기사(move_base)에게 목적지 전송
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "base_link" # 로봇 중심 기준
        goal.target_pose.header.stamp = rospy.Time.now()

        goal.target_pose.pose.position.x = goal_x
        goal.target_pose.pose.position.y = goal_y

        q = quaternion_from_euler(0, 0, target_angle)
        goal.target_pose.pose.orientation.x = q[0]
        goal.target_pose.pose.orientation.y = q[1]
        goal.target_pose.pose.orientation.z = q[2]
        goal.target_pose.pose.orientation.w = q[3]

        rospy.loginfo("🚀 추종 명령 하달! [박스 크기:%d] 앞쪽:%.2fm, 측면:%.2fm 이동", area, goal_x, goal_y)
        self.client.send_goal(goal)

if __name__ == '__main__':
    try:
        SimplePersonFollower()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass