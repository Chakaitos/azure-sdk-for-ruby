# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_07_01
  module Models
    #
    # Specifies information about the image to use. You can specify information
    # about platform images, marketplace images, or virtual machine images.
    # This element is required when you want to use a platform image,
    # marketplace image, or virtual machine image, but is not used in other
    # creation operations.
    #
    class ImageReference < SubResource

      include MsRestAzure

      # @return [String] The image publisher.
      attr_accessor :publisher

      # @return [String] Specifies the offer of the platform image or
      # marketplace image used to create the virtual machine.
      attr_accessor :offer

      # @return [String] The image SKU.
      attr_accessor :sku

      # @return [String] Specifies the version of the platform image or
      # marketplace image used to create the virtual machine. The allowed
      # formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are
      # decimal numbers. Specify 'latest' to use the latest version of an image
      # available at deploy time. Even if you use 'latest', the VM image will
      # not automatically update after deploy time even if a new version
      # becomes available.
      attr_accessor :version


      #
      # Mapper for ImageReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageReference',
          type: {
            name: 'Composite',
            class_name: 'ImageReference',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              offer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'offer',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
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