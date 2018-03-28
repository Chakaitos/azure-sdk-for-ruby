# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Authorization::Mgmt::V2015_07_01_preview
  #
  # Role based access control provides you a way to apply granular level policy
  # administration down to individual resources or resource groups. These
  # operations enable you to manage role definitions and role assignments. A
  # role definition describes the set of actions that can be performed on
  # resources. A role assignment grants access to Azure Active Directory users.
  #
  class Permissions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Permissions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AuthorizationManagementClient] reference to the AuthorizationManagementClient
    attr_reader :client

    #
    # Gets all permissions the caller has for a resource group.
    #
    # @param resource_group_name [String] The name of the resource group to get the
    # permissions for. The name is case insensitive.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Permission>] operation results.
    #
    def list_for_resource_group(resource_group_name, custom_headers:nil)
      first_page = list_for_resource_group_as_lazy(resource_group_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all permissions the caller has for a resource group.
    #
    # @param resource_group_name [String] The name of the resource group to get the
    # permissions for. The name is case insensitive.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_for_resource_group_with_http_info(resource_group_name, custom_headers:nil)
      list_for_resource_group_async(resource_group_name, custom_headers:custom_headers).value!
    end

    #
    # Gets all permissions the caller has for a resource group.
    #
    # @param resource_group_name [String] The name of the resource group to get the
    # permissions for. The name is case insensitive.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_for_resource_group_async(resource_group_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Authorization/permissions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::PermissionGetResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all permissions the caller has for a resource.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the resource. The name is case insensitive.
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider.
    # @param parent_resource_path [String] The parent resource identity.
    # @param resource_type [String] The resource type of the resource.
    # @param resource_name [String] The name of the resource to get the permissions
    # for.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Permission>] operation results.
    #
    def list_for_resource(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, custom_headers:nil)
      first_page = list_for_resource_as_lazy(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets all permissions the caller has for a resource.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the resource. The name is case insensitive.
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider.
    # @param parent_resource_path [String] The parent resource identity.
    # @param resource_type [String] The resource type of the resource.
    # @param resource_name [String] The name of the resource to get the permissions
    # for.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_for_resource_with_http_info(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, custom_headers:nil)
      list_for_resource_async(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, custom_headers:custom_headers).value!
    end

    #
    # Gets all permissions the caller has for a resource.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the resource. The name is case insensitive.
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider.
    # @param parent_resource_path [String] The parent resource identity.
    # @param resource_type [String] The resource type of the resource.
    # @param resource_name [String] The name of the resource to get the permissions
    # for.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_for_resource_async(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_provider_namespace is nil' if resource_provider_namespace.nil?
      fail ArgumentError, 'parent_resource_path is nil' if parent_resource_path.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName}/providers/Microsoft.Authorization/permissions'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'resourceProviderNamespace' => resource_provider_namespace,'resourceName' => resource_name,'subscriptionId' => @client.subscription_id},
          skip_encoding_path_params: {'parentResourcePath' => parent_resource_path,'resourceType' => resource_type},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::PermissionGetResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all permissions the caller has for a resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PermissionGetResult] operation results.
    #
    def list_for_resource_group_next(next_page_link, custom_headers:nil)
      response = list_for_resource_group_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all permissions the caller has for a resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_for_resource_group_next_with_http_info(next_page_link, custom_headers:nil)
      list_for_resource_group_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets all permissions the caller has for a resource group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_for_resource_group_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::PermissionGetResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all permissions the caller has for a resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PermissionGetResult] operation results.
    #
    def list_for_resource_next(next_page_link, custom_headers:nil)
      response = list_for_resource_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all permissions the caller has for a resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_for_resource_next_with_http_info(next_page_link, custom_headers:nil)
      list_for_resource_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets all permissions the caller has for a resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_for_resource_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Authorization::Mgmt::V2015_07_01_preview::Models::PermissionGetResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets all permissions the caller has for a resource group.
    #
    # @param resource_group_name [String] The name of the resource group to get the
    # permissions for. The name is case insensitive.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PermissionGetResult] which provide lazy access to pages of the
    # response.
    #
    def list_for_resource_group_as_lazy(resource_group_name, custom_headers:nil)
      response = list_for_resource_group_async(resource_group_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_for_resource_group_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Gets all permissions the caller has for a resource.
    #
    # @param resource_group_name [String] The name of the resource group containing
    # the resource. The name is case insensitive.
    # @param resource_provider_namespace [String] The namespace of the resource
    # provider.
    # @param parent_resource_path [String] The parent resource identity.
    # @param resource_type [String] The resource type of the resource.
    # @param resource_name [String] The name of the resource to get the permissions
    # for.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PermissionGetResult] which provide lazy access to pages of the
    # response.
    #
    def list_for_resource_as_lazy(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, custom_headers:nil)
      response = list_for_resource_async(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_for_resource_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
