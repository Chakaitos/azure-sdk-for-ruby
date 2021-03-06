# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # The health statistics of an entity, returned as part of the health query
    # result when the query description is configured to include statistics.
    # The statistics include health state counts for all children types of the
    # current entity.
    # For example, for cluster, the health statistics include health state
    # counts for nodes, applications, services, partitions, replicas, deployed
    # applications and deployed service packages.
    # For partition, the health statistics include health counts for replicas.
    #
    class HealthStatistics

      include MsRestAzure

      # @return [Array<EntityKindHealthStateCount>] List of health state counts
      # per entity kind, which keeps track of how many children of the queried
      # entity are in Ok, Warning and Error state.
      attr_accessor :health_state_count_list


      #
      # Mapper for HealthStatistics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HealthStatistics',
          type: {
            name: 'Composite',
            class_name: 'HealthStatistics',
            model_properties: {
              health_state_count_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthStateCountList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EntityKindHealthStateCountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EntityKindHealthStateCount'
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
