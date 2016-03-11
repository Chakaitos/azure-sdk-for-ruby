# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Model object.
    #
    class HostingEnvironmentProperties

      include MsRestAzure

      # @return [String] Name of the hostingEnvironment (App Service
      # Environment)
      attr_accessor :name

      # @return [String] Location of the hostingEnvironment (App Service
      # Environment), e.g. "West US"
      attr_accessor :location

      # @return [HostingEnvironmentStatus] Current status of the
      # hostingEnvironment (App Service Environment). Possible values
      # include: 'Preparing', 'Ready', 'Scaling', 'Deleting'
      attr_accessor :status

      # @return [String] Name of the hostingEnvironment's (App Service
      # Environment) virtual network
      attr_accessor :vnet_name

      # @return [String] Resource group of the hostingEnvironment's (App
      # Service Environment) virtual network
      attr_accessor :vnet_resource_group_name

      # @return [String] Subnet of the hostingEnvironment's (App Service
      # Environment) virtual network
      attr_accessor :vnet_subnet_name

      # @return [VirtualNetworkProfile] Description of the
      # hostingEnvironment's (App Service Environment) virtual network
      attr_accessor :virtual_network

      # @return [InternalLoadBalancingMode] Specifies which endpoints to serve
      # internally in the hostingEnvironment's (App Service Environment)
      # VNET. Possible values include: 'None', 'Web', 'Publishing'
      attr_accessor :internal_load_balancing_mode

      # @return [String] Front-end VM size, e.g. "Medium", "Large"
      attr_accessor :multi_size

      # @return [Integer] Number of front-end instances
      attr_accessor :multi_role_count

      # @return [Array<WorkerPool>] Description of worker pools with worker
      # size ids, VM sizes, and number of workers in each pool
      attr_accessor :worker_pools

      # @return [Integer] Number of IP SSL addresses reserved for this
      # hostingEnvironment (App Service Environment)
      attr_accessor :ipssl_address_count

      # @return [String] Edition of the metadata database for the
      # hostingEnvironment (App Service Environment) e.g. "Standard"
      attr_accessor :database_edition

      # @return [String] Service objective of the metadata database for the
      # hostingEnvironment (App Service Environment) e.g. "S0"
      attr_accessor :database_service_objective

      # @return [Integer] Number of upgrade domains of this hostingEnvironment
      # (App Service Environment)
      attr_accessor :upgrade_domains

      # @return [String] Subscription of the hostingEnvironment (App Service
      # Environment)
      attr_accessor :subscription_id

      # @return [String] DNS suffix of the hostingEnvironment (App Service
      # Environment)
      attr_accessor :dns_suffix

      # @return [String] Last deployment action on this hostingEnvironment
      # (App Service Environment)
      attr_accessor :last_action

      # @return [String] Result of the last deployment action on this
      # hostingEnvironment (App Service Environment)
      attr_accessor :last_action_result

      # @return [String] List of comma separated strings describing which VM
      # sizes are allowed for front-ends
      attr_accessor :allowed_multi_sizes

      # @return [String] List of comma separated strings describing which VM
      # sizes are allowed for workers
      attr_accessor :allowed_worker_sizes

      # @return [Integer] Maximum number of VMs in this hostingEnvironment
      # (App Service Environment)
      attr_accessor :maximum_number_of_machines

      # @return [Array<VirtualIPMapping>] Description of IP SSL mapping for
      # this hostingEnvironment (App Service Environment)
      attr_accessor :vip_mappings

      # @return [Array<StampCapacity>] Current total, used, and available
      # worker capacities
      attr_accessor :environment_capacities

      # @return [Array<NetworkAccessControlEntry>] Access control list for
      # controlling traffic to the hostingEnvironment (App Service
      # Environment)
      attr_accessor :network_access_control_list

      # @return [Boolean] True/false indicating whether the hostingEnvironment
      # (App Service Environment) is healthy
      attr_accessor :environment_is_healthy

      # @return [String] Detailed message about with results of the last check
      # of the hostingEnvironment (App Service Environment)
      attr_accessor :environment_status

      # @return [String] Resource group of the hostingEnvironment (App Service
      # Environment)
      attr_accessor :resource_group

      # @return [String] Api Management Account associated with this Hosting
      # Environment
      attr_accessor :api_management_account_id

      # @return [Boolean] True/false indicating whether the hostingEnvironment
      # is suspended. The environment can be suspended e.g. when the
      # management endpoint is no longer available
      # (most likely because NSG blocked the incoming traffic)
      attr_accessor :suspended

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @virtual_network.validate unless @virtual_network.nil?
        @worker_pools.each{ |e| e.validate if e.respond_to?(:validate) } unless @worker_pools.nil?
        @vip_mappings.each{ |e| e.validate if e.respond_to?(:validate) } unless @vip_mappings.nil?
        @environment_capacities.each{ |e| e.validate if e.respond_to?(:validate) } unless @environment_capacities.nil?
        @network_access_control_list.each{ |e| e.validate if e.respond_to?(:validate) } unless @network_access_control_list.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.location
        output_object['location'] = serialized_property unless serialized_property.nil?

        serialized_property = object.status
        output_object['status'] = serialized_property unless serialized_property.nil?

        serialized_property = object.vnet_name
        output_object['vnetName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.vnet_resource_group_name
        output_object['vnetResourceGroupName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.vnet_subnet_name
        output_object['vnetSubnetName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.virtual_network
        unless serialized_property.nil?
          serialized_property = VirtualNetworkProfile.serialize_object(serialized_property)
        end
        output_object['virtualNetwork'] = serialized_property unless serialized_property.nil?

        serialized_property = object.internal_load_balancing_mode
        output_object['internalLoadBalancingMode'] = serialized_property unless serialized_property.nil?

        serialized_property = object.multi_size
        output_object['multiSize'] = serialized_property unless serialized_property.nil?

        serialized_property = object.multi_role_count
        output_object['multiRoleCount'] = serialized_property unless serialized_property.nil?

        serialized_property = object.worker_pools
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = WorkerPool.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['workerPools'] = serialized_property unless serialized_property.nil?

        serialized_property = object.ipssl_address_count
        output_object['ipsslAddressCount'] = serialized_property unless serialized_property.nil?

        serialized_property = object.database_edition
        output_object['databaseEdition'] = serialized_property unless serialized_property.nil?

        serialized_property = object.database_service_objective
        output_object['databaseServiceObjective'] = serialized_property unless serialized_property.nil?

        serialized_property = object.upgrade_domains
        output_object['upgradeDomains'] = serialized_property unless serialized_property.nil?

        serialized_property = object.subscription_id
        output_object['subscriptionId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.dns_suffix
        output_object['dnsSuffix'] = serialized_property unless serialized_property.nil?

        serialized_property = object.last_action
        output_object['lastAction'] = serialized_property unless serialized_property.nil?

        serialized_property = object.last_action_result
        output_object['lastActionResult'] = serialized_property unless serialized_property.nil?

        serialized_property = object.allowed_multi_sizes
        output_object['allowedMultiSizes'] = serialized_property unless serialized_property.nil?

        serialized_property = object.allowed_worker_sizes
        output_object['allowedWorkerSizes'] = serialized_property unless serialized_property.nil?

        serialized_property = object.maximum_number_of_machines
        output_object['maximumNumberOfMachines'] = serialized_property unless serialized_property.nil?

        serialized_property = object.vip_mappings
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element1|
            unless element1.nil?
              element1 = VirtualIPMapping.serialize_object(element1)
            end
            serializedArray.push(element1)
          end
          serialized_property = serializedArray
        end
        output_object['vipMappings'] = serialized_property unless serialized_property.nil?

        serialized_property = object.environment_capacities
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element2|
            unless element2.nil?
              element2 = StampCapacity.serialize_object(element2)
            end
            serializedArray.push(element2)
          end
          serialized_property = serializedArray
        end
        output_object['environmentCapacities'] = serialized_property unless serialized_property.nil?

        serialized_property = object.network_access_control_list
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element3|
            unless element3.nil?
              element3 = NetworkAccessControlEntry.serialize_object(element3)
            end
            serializedArray.push(element3)
          end
          serialized_property = serializedArray
        end
        output_object['networkAccessControlList'] = serialized_property unless serialized_property.nil?

        serialized_property = object.environment_is_healthy
        output_object['environmentIsHealthy'] = serialized_property unless serialized_property.nil?

        serialized_property = object.environment_status
        output_object['environmentStatus'] = serialized_property unless serialized_property.nil?

        serialized_property = object.resource_group
        output_object['resourceGroup'] = serialized_property unless serialized_property.nil?

        serialized_property = object.api_management_account_id
        output_object['apiManagementAccountId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.suspended
        output_object['suspended'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [HostingEnvironmentProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = HostingEnvironmentProperties.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['location']
        output_object.location = deserialized_property

        deserialized_property = object['status']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = HostingEnvironmentStatus.constants.any? { |e| HostingEnvironmentStatus.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum HostingEnvironmentStatus does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.status = deserialized_property

        deserialized_property = object['vnetName']
        output_object.vnet_name = deserialized_property

        deserialized_property = object['vnetResourceGroupName']
        output_object.vnet_resource_group_name = deserialized_property

        deserialized_property = object['vnetSubnetName']
        output_object.vnet_subnet_name = deserialized_property

        deserialized_property = object['virtualNetwork']
        unless deserialized_property.nil?
          deserialized_property = VirtualNetworkProfile.deserialize_object(deserialized_property)
        end
        output_object.virtual_network = deserialized_property

        deserialized_property = object['internalLoadBalancingMode']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = InternalLoadBalancingMode.constants.any? { |e| InternalLoadBalancingMode.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum InternalLoadBalancingMode does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.internal_load_balancing_mode = deserialized_property

        deserialized_property = object['multiSize']
        output_object.multi_size = deserialized_property

        deserialized_property = object['multiRoleCount']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.multi_role_count = deserialized_property

        deserialized_property = object['workerPools']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element4|
            unless element4.nil?
              element4 = WorkerPool.deserialize_object(element4)
            end
            deserialized_array.push(element4)
          end
          deserialized_property = deserialized_array
        end
        output_object.worker_pools = deserialized_property

        deserialized_property = object['ipsslAddressCount']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.ipssl_address_count = deserialized_property

        deserialized_property = object['databaseEdition']
        output_object.database_edition = deserialized_property

        deserialized_property = object['databaseServiceObjective']
        output_object.database_service_objective = deserialized_property

        deserialized_property = object['upgradeDomains']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.upgrade_domains = deserialized_property

        deserialized_property = object['subscriptionId']
        output_object.subscription_id = deserialized_property

        deserialized_property = object['dnsSuffix']
        output_object.dns_suffix = deserialized_property

        deserialized_property = object['lastAction']
        output_object.last_action = deserialized_property

        deserialized_property = object['lastActionResult']
        output_object.last_action_result = deserialized_property

        deserialized_property = object['allowedMultiSizes']
        output_object.allowed_multi_sizes = deserialized_property

        deserialized_property = object['allowedWorkerSizes']
        output_object.allowed_worker_sizes = deserialized_property

        deserialized_property = object['maximumNumberOfMachines']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.maximum_number_of_machines = deserialized_property

        deserialized_property = object['vipMappings']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element5|
            unless element5.nil?
              element5 = VirtualIPMapping.deserialize_object(element5)
            end
            deserialized_array.push(element5)
          end
          deserialized_property = deserialized_array
        end
        output_object.vip_mappings = deserialized_property

        deserialized_property = object['environmentCapacities']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element6|
            unless element6.nil?
              element6 = StampCapacity.deserialize_object(element6)
            end
            deserialized_array.push(element6)
          end
          deserialized_property = deserialized_array
        end
        output_object.environment_capacities = deserialized_property

        deserialized_property = object['networkAccessControlList']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element7|
            unless element7.nil?
              element7 = NetworkAccessControlEntry.deserialize_object(element7)
            end
            deserialized_array.push(element7)
          end
          deserialized_property = deserialized_array
        end
        output_object.network_access_control_list = deserialized_property

        deserialized_property = object['environmentIsHealthy']
        output_object.environment_is_healthy = deserialized_property

        deserialized_property = object['environmentStatus']
        output_object.environment_status = deserialized_property

        deserialized_property = object['resourceGroup']
        output_object.resource_group = deserialized_property

        deserialized_property = object['apiManagementAccountId']
        output_object.api_management_account_id = deserialized_property

        deserialized_property = object['suspended']
        output_object.suspended = deserialized_property

        output_object
      end
    end
  end
end