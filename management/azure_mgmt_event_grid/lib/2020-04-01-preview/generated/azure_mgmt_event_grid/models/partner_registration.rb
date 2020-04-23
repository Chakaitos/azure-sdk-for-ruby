# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_04_01_preview
  module Models
    #
    # Information about a partner registration.
    #
    class PartnerRegistration < TrackedResource

      include MsRestAzure

      # @return [PartnerRegistrationProvisioningState] Provisioning state of
      # the partner registration. Possible values include: 'Creating',
      # 'Updating', 'Deleting', 'Succeeded', 'Canceled', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] Official name of the partner name. For example:
      # "Contoso".
      attr_accessor :partner_name

      # @return [String] Name of the partner resource type.
      attr_accessor :partner_resource_type_name

      # @return [String] Display name of the partner resource type.
      attr_accessor :partner_resource_type_display_name

      # @return [String] Description of the partner resource type.
      attr_accessor :partner_resource_type_description

      # @return [String] URI of the partner website that can be used by Azure
      # customers to setup Event Grid
      # integration on an event source.
      attr_accessor :setup_uri

      # @return [String] URI of the logo.
      attr_accessor :logo_uri

      # @return [PartnerRegistrationVisibilityState] Visibility state of the
      # partner registration. Possible values include: 'Hidden',
      # 'PublicPreview', 'GenerallyAvailable'
      attr_accessor :visibility_state

      # @return [Array<String>] List of Azure subscription Ids that are
      # authorized to create a partner namespace
      # associated with this partner registration. This is an optional
      # property. Creating
      # partner namespaces is always permitted under the same Azure
      # subscription as the one used
      # for creating the partner registration.
      attr_accessor :authorized_azure_subscription_ids


      #
      # Mapper for PartnerRegistration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartnerRegistration',
          type: {
            name: 'Composite',
            class_name: 'PartnerRegistration',
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              partner_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.partnerName',
                type: {
                  name: 'String'
                }
              },
              partner_resource_type_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.partnerResourceTypeName',
                type: {
                  name: 'String'
                }
              },
              partner_resource_type_display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.partnerResourceTypeDisplayName',
                type: {
                  name: 'String'
                }
              },
              partner_resource_type_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.partnerResourceTypeDescription',
                type: {
                  name: 'String'
                }
              },
              setup_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.setupUri',
                type: {
                  name: 'String'
                }
              },
              logo_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.logoUri',
                type: {
                  name: 'String'
                }
              },
              visibility_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.visibilityState',
                type: {
                  name: 'String'
                }
              },
              authorized_azure_subscription_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.authorizedAzureSubscriptionIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end