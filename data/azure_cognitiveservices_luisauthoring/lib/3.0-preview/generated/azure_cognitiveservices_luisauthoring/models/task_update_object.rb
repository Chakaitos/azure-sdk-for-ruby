# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # Object model for cloning an application's version.
    #
    class TaskUpdateObject

      include MsRestAzure

      # @return [String] The new version for the cloned model.
      attr_accessor :version


      #
      # Mapper for TaskUpdateObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TaskUpdateObject',
          type: {
            name: 'Composite',
            class_name: 'TaskUpdateObject',
            model_properties: {
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
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
