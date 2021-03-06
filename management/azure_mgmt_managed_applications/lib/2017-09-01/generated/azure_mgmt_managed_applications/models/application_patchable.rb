# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ManagedApplications::Mgmt::V2017_09_01
  module Models
    #
    # Information about managed application.
    #
    class ApplicationPatchable < GenericResource

      include MsRestAzure

      # @return [String] The managed resource group Id.
      attr_accessor :managed_resource_group_id

      # @return [String] The fully qualified path of managed application
      # definition Id.
      attr_accessor :application_definition_id

      # @return Name and value pairs that define the managed application
      # parameters. It can be a JObject or a well formed JSON string.
      attr_accessor :parameters

      # @return Name and value pairs that define the managed application
      # outputs.
      attr_accessor :outputs

      # @return [ProvisioningState] The managed application provisioning state.
      # Possible values include: 'Accepted', 'Running', 'Ready', 'Creating',
      # 'Created', 'Deleting', 'Deleted', 'Canceled', 'Failed', 'Succeeded',
      # 'Updating'
      attr_accessor :provisioning_state

      # @return [String] The blob URI where the UI definition file is located.
      attr_accessor :ui_definition_uri

      # @return [PlanPatchable] The plan information.
      attr_accessor :plan

      # @return [String] The kind of the managed application. Allowed values
      # are MarketPlace and ServiceCatalog.
      attr_accessor :kind


      #
      # Mapper for ApplicationPatchable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationPatchable',
          type: {
            name: 'Composite',
            class_name: 'ApplicationPatchable',
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
                required: false,
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
              managed_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedBy',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              },
              managed_resource_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.managedResourceGroupId',
                type: {
                  name: 'String'
                }
              },
              application_definition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicationDefinitionId',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Object'
                }
              },
              outputs: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.outputs',
                type: {
                  name: 'Object'
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
              ui_definition_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.uiDefinitionUri',
                type: {
                  name: 'String'
                }
              },
              plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'plan',
                type: {
                  name: 'Composite',
                  class_name: 'PlanPatchable'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                constraints: {
                  Pattern: '^[-\w\._,\(\)]+$'
                },
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
