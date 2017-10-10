# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus::Api_2017_04_01
  module Models
    #
    # The response of the List PremiumMessagingRegions operation.
    #
    class PremiumMessagingRegionsListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<PremiumMessagingRegions>] Result of the List
      # PremiumMessagingRegions type.
      attr_accessor :value

      # @return [String] Link to the next set of results. Not empty if Value
      # contains incomplete list of PremiumMessagingRegions.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<PremiumMessagingRegions>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [PremiumMessagingRegionsListResult] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for PremiumMessagingRegionsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PremiumMessagingRegionsListResult',
          type: {
            name: 'Composite',
            class_name: 'PremiumMessagingRegionsListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PremiumMessagingRegionsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PremiumMessagingRegions'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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