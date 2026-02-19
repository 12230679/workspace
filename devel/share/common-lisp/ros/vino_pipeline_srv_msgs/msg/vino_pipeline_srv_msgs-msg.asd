
(cl:in-package :asdf)

(defsystem "vino_pipeline_srv_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Pipeline" :depends-on ("_package_Pipeline"))
    (:file "_package_Pipeline" :depends-on ("_package"))
    (:file "PipelineRequest" :depends-on ("_package_PipelineRequest"))
    (:file "_package_PipelineRequest" :depends-on ("_package"))
    (:file "Pipelines" :depends-on ("_package_Pipelines"))
    (:file "_package_Pipelines" :depends-on ("_package"))
  ))