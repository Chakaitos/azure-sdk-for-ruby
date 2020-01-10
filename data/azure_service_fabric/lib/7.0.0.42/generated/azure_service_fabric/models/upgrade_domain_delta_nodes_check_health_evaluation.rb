# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Represents health evaluation for delta unhealthy cluster nodes in an
    # upgrade domain, containing health evaluations for each unhealthy node
    # that impacted current aggregated health state.
    # Can be returned during cluster upgrade when cluster aggregated health
    # state is Warning or Error.
    #
    class UpgradeDomainDeltaNodesCheckHealthEvaluation < HealthEvaluation

      include MsRestAzure


      def initialize
        @Kind = "UpgradeDomainDeltaNodesCheck"
      end

      attr_accessor :Kind

      # @return [String] Name of the upgrade domain where nodes health is
      # currently evaluated.
      attr_accessor :upgrade_domain_name

      # @return [Integer] Number of upgrade domain nodes with aggregated heath
      # state Error in the health store at the beginning of the cluster
      # upgrade.
      attr_accessor :baseline_error_count

      # @return [Integer] Total number of upgrade domain nodes in the health
      # store at the beginning of the cluster upgrade.
      attr_accessor :baseline_total_count

      # @return [Integer] Maximum allowed percentage of upgrade domain delta
      # unhealthy nodes from the ClusterUpgradeHealthPolicy.
      attr_accessor :max_percent_delta_unhealthy_nodes

      # @return [Integer] Total number of upgrade domain nodes in the health
      # store.
      attr_accessor :total_count

      # @return [Array<HealthEvaluationWrapper>] List of unhealthy evaluations
      # that led to the aggregated health state. Includes all the unhealthy
      # NodeHealthEvaluation that impacted the aggregated health.
      attr_accessor :unhealthy_evaluations


      #
      # Mapper for UpgradeDomainDeltaNodesCheckHealthEvaluation class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpgradeDomainDeltaNodesCheck',
          type: {
            name: 'Composite',
            class_name: 'UpgradeDomainDeltaNodesCheckHealthEvaluation',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Description',
                type: {
                  name: 'String'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              upgrade_domain_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeDomainName',
                type: {
                  name: 'String'
                }
              },
              baseline_error_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'BaselineErrorCount',
                type: {
                  name: 'Number'
                }
              },
              baseline_total_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'BaselineTotalCount',
                type: {
                  name: 'Number'
                }
              },
              max_percent_delta_unhealthy_nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'MaxPercentDeltaUnhealthyNodes',
                type: {
                  name: 'Number'
                }
              },
              total_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TotalCount',
                type: {
                  name: 'Number'
                }
              },
              unhealthy_evaluations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnhealthyEvaluations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEvaluationWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvaluationWrapper'
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