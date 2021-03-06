# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Description of a Service Fabric property.
    #
    class PropertyDescription

      include MsRestAzure

      # @return [String] The name of the Service Fabric property.
      attr_accessor :property_name

      # @return [String] The property's custom type ID. Using this property,
      # the user is able to tag the type of the value of the property.
      attr_accessor :custom_type_id

      # @return [PropertyValue] Describes a Service Fabric property value.
      attr_accessor :value


      #
      # Mapper for PropertyDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PropertyDescription',
          type: {
            name: 'Composite',
            class_name: 'PropertyDescription',
            model_properties: {
              property_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PropertyName',
                type: {
                  name: 'String'
                }
              },
              custom_type_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CustomTypeId',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Value',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'Kind',
                  uber_parent: 'PropertyValue',
                  class_name: 'PropertyValue'
                }
              }
            }
          }
        }
      end
    end
  end
end
