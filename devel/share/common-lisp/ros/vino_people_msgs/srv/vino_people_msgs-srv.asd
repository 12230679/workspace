
(cl:in-package :asdf)

(defsystem "vino_people_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :vino_people_msgs-msg
)
  :components ((:file "_package")
    (:file "AgeGenderSrv" :depends-on ("_package_AgeGenderSrv"))
    (:file "_package_AgeGenderSrv" :depends-on ("_package"))
    (:file "EmotionSrv" :depends-on ("_package_EmotionSrv"))
    (:file "_package_EmotionSrv" :depends-on ("_package"))
    (:file "HeadPoseSrv" :depends-on ("_package_HeadPoseSrv"))
    (:file "_package_HeadPoseSrv" :depends-on ("_package"))
    (:file "ObjectsInMasksSrv" :depends-on ("_package_ObjectsInMasksSrv"))
    (:file "_package_ObjectsInMasksSrv" :depends-on ("_package"))
    (:file "PeopleSrv" :depends-on ("_package_PeopleSrv"))
    (:file "_package_PeopleSrv" :depends-on ("_package"))
    (:file "ReidentificationSrv" :depends-on ("_package_ReidentificationSrv"))
    (:file "_package_ReidentificationSrv" :depends-on ("_package"))
  ))