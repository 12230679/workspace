#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from geometry_msgs.msg import Twist
from object_msgs.msg import ObjectsInBoxes

class PersonFollower:
    def __init__(self):
        rospy.init_node('person_follower_node')
        self.cmd_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        self.obj_sub = rospy.Subscriber('/ros_openvino_toolkit/detected_objects', ObjectsInBoxes, self.callback)
        self.image_width = 640 
        
    def callback(self, msg):
        twist = Twist()
        target_person = None

        for obj in msg.objects_vector:
            if obj.object.object_name == "person":
                target_person = obj
                break 

        if target_person is not None:
            x_center = target_person.roi.x_offset + (target_person.roi.width / 2)
            area = target_person.roi.width * target_person.roi.height

            error_x = (self.image_width / 2) - x_center
            twist.angular.z = error_x * 0.002 

            if area < 40000: 
                twist.linear.x = 0.15 
            elif area > 70000: 
                twist.linear.x = -0.1 
            else:
                twist.linear.x = 0.0 
        else:
            twist.linear.x = 0.0
            twist.angular.z = 0.0

        self.cmd_pub.publish(twist)

if __name__ == '__main__':
    try:
        Follower = PersonFollower()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
