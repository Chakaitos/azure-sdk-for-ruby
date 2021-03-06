# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The JSON schema.
    #
    class JsonSchema

      include MsRestAzure

      # @return [String] The JSON title.
      attr_accessor :title

      # @return [String] The JSON content.
      attr_accessor :content


      #
      # Mapper for JsonSchema class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JsonSchema',
          type: {
            name: 'Composite',
            class_name: 'JsonSchema',
            model_properties: {
              title: {
                client_side_validation: true,
                required: false,
                serialized_name: 'title',
                type: {
                  name: 'String'
                }
              },
              content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'content',
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
