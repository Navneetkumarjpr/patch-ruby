=begin
#Patch API V1

#The core API used to integrate with Patch's service

The version of the OpenAPI document: v1
Contact: developers@usepatch.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Patch
  class OrdersApi
    OPERATIONS = [
      :cancel_order,
      :create_order,
      :place_order,
      :retrieve_order,
      :retrieve_orders,
    ]

    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel an order
    # Cancelling an order removes the associated offset allocation from an order. You will not be charged for cancelled orders. Only orders in the `draft` state can be cancelled. 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [OrderResponse]
    def cancel_order(id, opts = {})
      data, _status_code, _headers = cancel_order_with_http_info(id, opts)
      data
    end

    # Cancel an order
    # Cancelling an order removes the associated offset allocation from an order. You will not be charged for cancelled orders. Only orders in the &#x60;draft&#x60; state can be cancelled. 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def cancel_order_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.cancel_order ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.cancel_order"
      end
      # resource path
      local_var_path = '/v1/orders/{id}/cancel'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'OrderResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#cancel_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates an order
    # Creates an order in the `placed` state. To create a `draft` order, create an estimate first. 
    # @param create_order_request [CreateOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OrderResponse]
    def create_order(create_order_request, opts = {})
      data, _status_code, _headers = create_order_with_http_info(create_order_request, opts)
      data
    end

    # Creates an order
    # Creates an order in the &#x60;placed&#x60; state. To create a &#x60;draft&#x60; order, create an estimate first. 
    # @param create_order_request [CreateOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def create_order_with_http_info(create_order_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.create_order ...'
      end
      # verify the required parameter 'create_order_request' is set
      if @api_client.config.client_side_validation && create_order_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_order_request' when calling OrdersApi.create_order"
      end
      # resource path
      local_var_path = '/v1/orders'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_order_request) 

      # return_type
      return_type = opts[:return_type] || 'OrderResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#create_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Place an order
    # Placing an order confirms an order's allocation of offsets. Only orders that are in the `draft` state can be placed 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [OrderResponse]
    def place_order(id, opts = {})
      data, _status_code, _headers = place_order_with_http_info(id, opts)
      data
    end

    # Place an order
    # Placing an order confirms an order&#39;s allocation of offsets. Only orders that are in the &#x60;draft&#x60; state can be placed 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def place_order_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.place_order ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.place_order"
      end
      # resource path
      local_var_path = '/v1/orders/{id}/place'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'OrderResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#place_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves an order
    # Retrieves a given order and its allocation offsets or negative emissions. You can only retrieve orders associated with the organization you are querying for. 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [OrderResponse]
    def retrieve_order(id, opts = {})
      data, _status_code, _headers = retrieve_order_with_http_info(id, opts)
      data
    end

    # Retrieves an order
    # Retrieves a given order and its allocation offsets or negative emissions. You can only retrieve orders associated with the organization you are querying for. 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def retrieve_order_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.retrieve_order ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OrdersApi.retrieve_order"
      end
      # resource path
      local_var_path = '/v1/orders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'OrderResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#retrieve_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a list of orders
    # Retrieves a list of orders and its allocation offsets or negative emissions. You can only retrieve orders associated with the organization you are querying for. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @return [OrderListResponse]
    def retrieve_orders(opts = {})
      data, _status_code, _headers = retrieve_orders_with_http_info(opts)
      data
    end

    # Retrieves a list of orders
    # Retrieves a list of orders and its allocation offsets or negative emissions. You can only retrieve orders associated with the organization you are querying for. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @return [Array<(OrderListResponse, Integer, Hash)>] OrderListResponse data, response status code and response headers
    def retrieve_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.retrieve_orders ...'
      end
      # resource path
      local_var_path = '/v1/orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'OrderListResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#retrieve_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
