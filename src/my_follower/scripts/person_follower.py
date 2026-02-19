#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from geometry_msgs.msg import Twist
from object_msgs.msg import ObjectsInBoxes

class PersonIDFollower:
    def __init__(self):
        rospy.init_node('person_id_follower_node')
        
        # 터틀봇 속도 제어 퍼블리셔
        self.cmd_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        
        # 메시지 타입을 ObjectsInBoxes로 변경
        self.sub = rospy.Subscriber('/ros_openvino_toolkit/reidentified_persons', ObjectsInBoxes, self.callback)
        
        self.target_id = "3"  # 추적할 ID
        self.image_width = 640

    def callback(self, msg):
        twist = Twist()
        target_person = None

        # ObjectsInBoxes 구조에 맞춰서 탐색
        for obj in msg.objects_vector:
            # OpenVINO는 보통 'person #1' 또는 '1' 형태로 ID를 보냅니다.
            # 이름에 '1'이 포함되어 있는지 확인하는 방식으로 처리합니다.
            if self.target_id in obj.object.object_name:
                target_person = obj
                break

        if target_person is not None:
            # 좌표 및 면적 계산
            roi = target_person.roi
            x_center = roi.x_offset + (roi.width / 2)
            area = roi.width * roi.height

            # [회전] 중앙에서 벗어난 정도에 따라 회전
            error_x = (self.image_width / 2) - x_center
            twist.angular.z = error_x * 0.0025 

            # [전진/후진] 면적(거리)에 따라 이동
            if area < 50000:   # 멀면 전진
                twist.linear.x = 0.15
            elif area > 100000: # 너무 가까우면 정지
                twist.linear.x = 0.0
            else:              # 적당한 거리 유지
                twist.linear.x = 0.1
                
            rospy.loginfo("ID %s 추적 중... 위치: %d, 크기: %d", self.target_id, x_center, area)
        else:
            # 타겟을 놓치면 정지
            twist.linear.x = 0.0
            twist.angular.z = 0.0

        self.cmd_pub.publish(twist)

if __name__ == '__main__':
    try:
        follower = PersonIDFollower()
        rospy.loginfo("ID 추종 노드가 시작되었습니다. 타겟 ID: %s", follower.target_id)
        rospy.spin()
    except rospy.ROSInterruptException:
        pass