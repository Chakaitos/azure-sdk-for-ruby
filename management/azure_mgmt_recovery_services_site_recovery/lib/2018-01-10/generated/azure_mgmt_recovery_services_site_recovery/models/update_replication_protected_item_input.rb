# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Update replication protected item input.
    #
    class UpdateReplicationProtectedItemInput

      include MsRestAzure

      # @return [UpdateReplicationProtectedItemInputProperties] Update
      # replication protected item properties.
      attr_accessor :properties


      #
      # Mapper for UpdateReplicationProtectedItemInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateReplicationProtectedItemInput',
          type: {
            name: 'Composite',
            class_name: 'UpdateReplicationProtectedItemInput',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'UpdateReplicationProtectedItemInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end