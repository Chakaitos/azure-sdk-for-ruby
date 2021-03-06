# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Query parameter to enumerate jobs.
    #
    class JobQueryParameter

      include MsRestAzure

      # @return [String] Date time to get jobs from.
      attr_accessor :start_time

      # @return [String] Date time to get jobs upto.
      attr_accessor :end_time

      # @return [String] The Id of the fabric to search jobs under.
      attr_accessor :fabric_id

      # @return [String] The type of objects.
      attr_accessor :affected_object_types

      # @return [String] The states of the job to be filtered can be in.
      attr_accessor :job_status


      #
      # Mapper for JobQueryParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobQueryParameter',
          type: {
            name: 'Composite',
            class_name: 'JobQueryParameter',
            model_properties: {
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'String'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'String'
                }
              },
              fabric_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricId',
                type: {
                  name: 'String'
                }
              },
              affected_object_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'affectedObjectTypes',
                type: {
                  name: 'String'
                }
              },
              job_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobStatus',
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
