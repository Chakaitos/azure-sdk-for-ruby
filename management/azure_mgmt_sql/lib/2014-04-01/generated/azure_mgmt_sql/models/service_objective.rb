# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents a database service objective.
    #
    class ServiceObjective < ProxyResource

      include MsRestAzure

      # @return [String] The name for the service objective.
      attr_accessor :service_objective_name

      # @return [Boolean] Gets whether the service level objective is the
      # default service objective.
      attr_accessor :is_default

      # @return [Boolean] Gets whether the service level objective is a system
      # service objective.
      attr_accessor :is_system

      # @return [String] The description for the service level objective.
      attr_accessor :description

      # @return [Boolean] Gets whether the service level objective is enabled.
      attr_accessor :enabled


      #
      # Mapper for ServiceObjective class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceObjective',
          type: {
            name: 'Composite',
            class_name: 'ServiceObjective',
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
              service_objective_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceObjectiveName',
                type: {
                  name: 'String'
                }
              },
              is_default: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isDefault',
                type: {
                  name: 'Boolean'
                }
              },
              is_system: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isSystem',
                type: {
                  name: 'Boolean'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
