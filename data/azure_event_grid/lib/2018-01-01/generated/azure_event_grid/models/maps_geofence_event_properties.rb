# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for a Geofence event
    # (GeofenceEntered, GeofenceExited, GeofenceResult).
    #
    class MapsGeofenceEventProperties

      include MsRestAzure

      # @return [Array<String>] Lists of the geometry ID of the geofence which
      # is expired relative to the user time in the request.
      attr_accessor :expired_geofence_geometry_id

      # @return [Array<MapsGeofenceGeometry>] Lists the fence geometries that
      # either fully contain the coordinate position or have an overlap with
      # the searchBuffer around the fence.
      attr_accessor :geometries

      # @return [Array<String>] Lists of the geometry ID of the geofence which
      # is in invalid period relative to the user time in the request.
      attr_accessor :invalid_period_geofence_geometry_id

      # @return [Boolean] True if at least one event is published to the Azure
      # Maps event subscriber, false if no event is published to the Azure Maps
      # event subscriber.
      attr_accessor :is_event_published


      #
      # Mapper for MapsGeofenceEventProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MapsGeofenceEventProperties',
          type: {
            name: 'Composite',
            class_name: 'MapsGeofenceEventProperties',
            model_properties: {
              expired_geofence_geometry_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expiredGeofenceGeometryId',
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
              },
              geometries: {
                client_side_validation: true,
                required: false,
                serialized_name: 'geometries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MapsGeofenceGeometryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MapsGeofenceGeometry'
                      }
                  }
                }
              },
              invalid_period_geofence_geometry_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'invalidPeriodGeofenceGeometryId',
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
              },
              is_event_published: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isEventPublished',
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
