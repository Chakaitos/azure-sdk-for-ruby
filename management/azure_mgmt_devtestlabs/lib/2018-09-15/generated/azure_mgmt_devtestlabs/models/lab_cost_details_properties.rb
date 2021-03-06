# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # The properties of a lab cost item.
    #
    class LabCostDetailsProperties

      include MsRestAzure

      # @return [DateTime] The date of the cost item.
      attr_accessor :date

      # @return [Float] The cost component of the cost item.
      attr_accessor :cost

      # @return [CostType] The type of the cost. Possible values include:
      # 'Unavailable', 'Reported', 'Projected'
      attr_accessor :cost_type


      #
      # Mapper for LabCostDetailsProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LabCostDetailsProperties',
          type: {
            name: 'Composite',
            class_name: 'LabCostDetailsProperties',
            model_properties: {
              date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'date',
                type: {
                  name: 'DateTime'
                }
              },
              cost: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cost',
                type: {
                  name: 'Double'
                }
              },
              cost_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'costType',
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
