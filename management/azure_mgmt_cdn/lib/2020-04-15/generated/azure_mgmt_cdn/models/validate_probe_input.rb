# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Input of the validate probe API.
    #
    class ValidateProbeInput

      include MsRestAzure

      # @return [String] The probe URL to validate.
      attr_accessor :probe_url


      #
      # Mapper for ValidateProbeInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateProbeInput',
          type: {
            name: 'Composite',
            class_name: 'ValidateProbeInput',
            model_properties: {
              probe_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'probeURL',
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