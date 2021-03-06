# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Node Deactivate Complete event.
    #
    class NodeDeactivateCompleteEvent < NodeEvent

      include MsRestAzure


      def initialize
        @Kind = "NodeDeactivateComplete"
      end

      attr_accessor :Kind

      # @return [Integer] Id of Node instance.
      attr_accessor :node_instance

      # @return [String] Describes deactivate intent.
      attr_accessor :effective_deactivate_intent

      # @return [String] Batch Ids.
      attr_accessor :batch_ids_with_deactivate_intent

      # @return [DateTime] Start time.
      attr_accessor :start_time


      #
      # Mapper for NodeDeactivateCompleteEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeDeactivateComplete',
          type: {
            name: 'Composite',
            class_name: 'NodeDeactivateCompleteEvent',
            model_properties: {
              event_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EventInstanceId',
                type: {
                  name: 'String'
                }
              },
              time_stamp: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TimeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              has_correlated_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HasCorrelatedEvents',
                type: {
                  name: 'Boolean'
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
              node_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeName',
                type: {
                  name: 'String'
                }
              },
              node_instance: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeInstance',
                type: {
                  name: 'Number'
                }
              },
              effective_deactivate_intent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EffectiveDeactivateIntent',
                type: {
                  name: 'String'
                }
              },
              batch_ids_with_deactivate_intent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'BatchIdsWithDeactivateIntent',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'StartTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
