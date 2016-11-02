# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    #
    class AS2AgreementContent

      include MsRestAzure

      # @return [AS2OneWayAgreement] The AS2 one-way receive agreement.
      attr_accessor :receive_agreement

      # @return [AS2OneWayAgreement] The AS2 one-way send agreement.
      attr_accessor :send_agreement


      #
      # Mapper for AS2AgreementContent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AS2AgreementContent',
          type: {
            name: 'Composite',
            class_name: 'AS2AgreementContent',
            model_properties: {
              receive_agreement: {
                required: false,
                serialized_name: 'receiveAgreement',
                type: {
                  name: 'Composite',
                  class_name: 'AS2OneWayAgreement'
                }
              },
              send_agreement: {
                required: false,
                serialized_name: 'sendAgreement',
                type: {
                  name: 'Composite',
                  class_name: 'AS2OneWayAgreement'
                }
              }
            }
          }
        }
      end
    end
  end
end