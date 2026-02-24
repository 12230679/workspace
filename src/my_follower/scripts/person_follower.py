#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from geometry_msgs.msg import Twist
# OpenVINO 패키지명에 따라 import 경로가 다를 수 있습니다. 
# 보통 'object_msgs.msg' 또는 'ros_openvino_toolkit' 내부 메시지를 사용합니다.
from object_msgs.msg import ObjectsInBoxes 

class PersonFollower:
    def __init__(self):
        rospy.init_node('person_follower_node')
        
        # 1. 속도 명령 발행 (Publisher)
        self.cmd_pub = rospy.Publisher('/mobile_base/commands/velocity', Twist, queue_size=10)
        
        # 2. OpenVINO 인식 결과 구독 (Subscriber)
        self.sub = rospy.Subscriber('/openvino_toolkit/object/detected_objects', ObjectsInBoxes, self.callback)
        
        # 설정값 (환경에 맞춰 튜닝 필요)
        self.target_center_x = 320  # 화면 가로 중앙 (640px 기준)
        self.target_area = 5000000    # 로봇이 멈추길 원하는 사람의 크기 (면적)
        
        self.lin_speed_k = 0.00002  # 전진 속도 계수 (P-gain)
        self.ang_speed_k = 0.0015   # 회전 속도 계수 (P-gain)
        
        rospy.loginfo("Person Follower Started!")

    def callback(self, data):
        twist = Twist()
        
        # 감지된 객체가 있는지 확인
        if len(data.objects_vector) > 0:
            # 여러 명 중 첫 번째 객체(가장 확률 높은 것) 선택
            # 'label #1'이 사람인지 확인하는 로직을 추가하면 더 정확합니다.
            target = data.objects_vector[0].roi
            
            # 1. 중심점 및 면적 계산
            current_center_x = target.x_offset + (target.width / 2)
            current_area = target.width * target.height
            
            # 2. 회전 제어 (Angular Z)
            # 중앙에서 벗어난 만큼 회전
            error_x = self.target_center_x - current_center_x
            twist.angular.z = error_x * self.ang_speed_k
            
            # 3. 전진/후진 제어 (Linear X)
            # 목표 면적보다 작으면(멀면) 전진, 크면(가까우면) 정지/후진
            error_area = self.target_area - current_area
            twist.linear.x = error_area * self.lin_speed_k
            
            # 속도 제한 (안전용)
            twist.linear.x = max(min(twist.linear.x, 0.2), -0.1) # 최대 0.2m/s
            
            rospy.loginfo("Follow: Area=%d, CenterX=%d", current_area, current_center_x)
        else:
            # 사람이 보이지 않으면 정지
            twist.linear.x = 0
            twist.angular.z = 0
            
        self.cmd_pub.publish(twist)

if __name__ == '__main__':
    try:
        follower = PersonFollower()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass