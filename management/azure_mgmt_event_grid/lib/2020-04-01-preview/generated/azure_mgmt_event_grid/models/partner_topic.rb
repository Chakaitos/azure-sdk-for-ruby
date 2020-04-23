# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_04_01_preview
  module Models
    #
    # EventGrid Partner Topic.
    #
    class PartnerTopic < TrackedResource

      include MsRestAzure

      # @return [String] Source associated with this partner topic. This
      # represents a unique partner resource.
      attr_accessor :source

      # @return [PartnerTopicProvisioningState] Provisioning state of the
      # partner topic. Possible values include: 'Creating', 'Updating',
      # 'Deleting', 'Succeeded', 'Canceled', 'Failed'
      attr_accessor :provisioning_state

      # @return [PartnerTopicActivationState] Activation state of the partner
      # topic. Possible values include: 'NeverActivated', 'Activated',
      # 'Deactivated'
      attr_accessor :activation_state


      #
      # Mapper for PartnerTopic class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartnerTopic',
          type: {
            name: 'Composite',
            class_name: 'PartnerTopic',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.source',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              activation_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.activationState',
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