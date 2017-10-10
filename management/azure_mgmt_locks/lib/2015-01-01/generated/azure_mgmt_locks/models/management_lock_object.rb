# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Locks::Api_2015_01_01
  module Models
    #
    # Management lock information.
    #
    class ManagementLockObject

      include MsRestAzure

      include MsRest::JSONable
      # @return [LockLevel] The lock level of the management lock. Possible
      # values include: 'NotSpecified', 'CanNotDelete', 'ReadOnly'
      attr_accessor :level

      # @return [String] The notes of the management lock.
      attr_accessor :notes

      # @return [String] The Id of the lock.
      attr_accessor :id

      # @return [String] The type of the lock.
      attr_accessor :type

      # @return [String] The name of the lock.
      attr_accessor :name


      #
      # Mapper for ManagementLockObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ManagementLockObject',
          type: {
            name: 'Composite',
            class_name: 'ManagementLockObject',
            model_properties: {
              level: {
                required: false,
                serialized_name: 'properties.level',
                type: {
                  name: 'String'
                }
              },
              notes: {
                required: false,
                serialized_name: 'properties.notes',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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