# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerService::Api_2016_09_30
  module Models
    #
    # Profile for the container service agent pool.
    #
    class ContainerServiceAgentPoolProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Unique name of the agent pool profile in the context
      # of the subscription and resource group.
      attr_accessor :name

      # @return [Integer] Number of agents (VMs) to host docker containers.
      # Allowed values must be in the range of 1 to 100 (inclusive). The
      # default value is 1. . Default value: 1 .
      attr_accessor :count

      # @return [ContainerServiceVMSizeTypes] Size of agent VMs. Possible
      # values include: 'Standard_A0', 'Standard_A1', 'Standard_A2',
      # 'Standard_A3', 'Standard_A4', 'Standard_A5', 'Standard_A6',
      # 'Standard_A7', 'Standard_A8', 'Standard_A9', 'Standard_A10',
      # 'Standard_A11', 'Standard_D1', 'Standard_D2', 'Standard_D3',
      # 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13',
      # 'Standard_D14', 'Standard_D1_v2', 'Standard_D2_v2', 'Standard_D3_v2',
      # 'Standard_D4_v2', 'Standard_D5_v2', 'Standard_D11_v2',
      # 'Standard_D12_v2', 'Standard_D13_v2', 'Standard_D14_v2', 'Standard_G1',
      # 'Standard_G2', 'Standard_G3', 'Standard_G4', 'Standard_G5',
      # 'Standard_DS1', 'Standard_DS2', 'Standard_DS3', 'Standard_DS4',
      # 'Standard_DS11', 'Standard_DS12', 'Standard_DS13', 'Standard_DS14',
      # 'Standard_GS1', 'Standard_GS2', 'Standard_GS3', 'Standard_GS4',
      # 'Standard_GS5'
      attr_accessor :vm_size

      # @return [String] DNS prefix to be used to create the FQDN for the agent
      # pool.
      attr_accessor :dns_prefix

      # @return [String] FDQN for the agent pool.
      attr_accessor :fqdn


      #
      # Mapper for ContainerServiceAgentPoolProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerServiceAgentPoolProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceAgentPoolProfile',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              count: {
                required: true,
                serialized_name: 'count',
                default_value: 1,
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              vm_size: {
                required: true,
                serialized_name: 'vmSize',
                type: {
                  name: 'String'
                }
              },
              dns_prefix: {
                required: true,
                serialized_name: 'dnsPrefix',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                required: false,
                read_only: true,
                serialized_name: 'fqdn',
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