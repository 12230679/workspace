
(cl:in-package :asdf)

(defsystem "vino_pipeline_srv_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :vino_pipeline_srv_msgs-msg
)
  :components ((:file "_package")
    (:file "PipelineSrv" :depends-on ("_package_PipelineSrv"))
    (:file "_package_PipelineSrv" :depends-on ("_package"))
  ))