# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The workflow run action filter.
    #
    class WorkflowRunActionFilter

      include MsRestAzure

      # @return [WorkflowStatus] The status of workflow run action. Possible
      # values include: 'NotSpecified', 'Paused', 'Running', 'Waiting',
      # 'Succeeded', 'Skipped', 'Suspended', 'Cancelled', 'Failed', 'Faulted',
      # 'TimedOut', 'Aborted', 'Ignored'
      attr_accessor :status


      #
      # Mapper for WorkflowRunActionFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkflowRunActionFilter',
          type: {
            name: 'Composite',
            class_name: 'WorkflowRunActionFilter',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end