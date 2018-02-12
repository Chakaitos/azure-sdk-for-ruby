# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # The definition of suggested relationship for the type.
    #
    class RelationshipsLookup

      include MsRestAzure

      # @return [String] The relationship profile.
      attr_accessor :profile_name

      # @return [Array<ParticipantPropertyReference>] The property references
      # for the profile type.
      attr_accessor :profile_property_references

      # @return [String] The related profile.
      attr_accessor :related_profile_name

      # @return [Array<ParticipantPropertyReference>] The property references
      # for the related profile type.
      attr_accessor :related_profile_property_references

      # @return [String] The name of existing Relationship.
      attr_accessor :existing_relationship_name


      #
      # Mapper for RelationshipsLookup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RelationshipsLookup',
          type: {
            name: 'Composite',
            class_name: 'RelationshipsLookup',
            model_properties: {
              profile_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'profileName',
                type: {
                  name: 'String'
                }
              },
              profile_property_references: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'profilePropertyReferences',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParticipantPropertyReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParticipantPropertyReference'
                      }
                  }
                }
              },
              related_profile_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'relatedProfileName',
                type: {
                  name: 'String'
                }
              },
              related_profile_property_references: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'relatedProfilePropertyReferences',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParticipantPropertyReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParticipantPropertyReference'
                      }
                  }
                }
              },
              existing_relationship_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'existingRelationshipName',
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