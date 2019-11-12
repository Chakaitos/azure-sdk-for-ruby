# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # Slack channel definition
    #
    class SlackChannel < Channel

      include MsRestAzure


      def initialize
        @channelName = "SlackChannel"
      end

      attr_accessor :channelName

      # @return [SlackChannelProperties] The set of properties specific to
      # Slack channel resource
      attr_accessor :properties


      #
      # Mapper for SlackChannel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SlackChannel',
          type: {
            name: 'Composite',
            class_name: 'SlackChannel',
            model_properties: {
              channelName: {
                client_side_validation: true,
                required: true,
                serialized_name: 'channelName',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'SlackChannelProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end