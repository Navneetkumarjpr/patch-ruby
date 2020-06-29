=begin
#Patch API V1

#The core API used to integrate with Patch's service

The version of the OpenAPI document: v1
Contact: developers@usepatch.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module PatchRuby
  class ProjectsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieves a project
    # Retrieves a project available on Patch's platform. 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [ProjectResponse]
    def retrieve_project(id, opts = {})
      data, _status_code, _headers = retrieve_project_with_http_info(id, opts)
      data
    end

    # Retrieves a project
    # Retrieves a project available on Patch&#39;s platform. 
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectResponse, Integer, Hash)>] ProjectResponse data, response status code and response headers
    def retrieve_project_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.retrieve_project ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectsApi.retrieve_project"
      end
      # resource path
      local_var_path = '/v1/projects/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:return_type] || 'ProjectResponse' 

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
        @api_client.config.logger.debug "API called: ProjectsApi#retrieve_project\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves a list of projects
    # Retrieves a list of projects available for purchase on Patch's platform. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @return [ProjectListResponse]
    def retrieve_projects(opts = {})
      data, _status_code, _headers = retrieve_projects_with_http_info(opts)
      data
    end

    # Retrieves a list of projects
    # Retrieves a list of projects available for purchase on Patch&#39;s platform. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @return [Array<(ProjectListResponse, Integer, Hash)>] ProjectListResponse data, response status code and response headers
    def retrieve_projects_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectsApi.retrieve_projects ...'
      end
      # resource path
      local_var_path = '/v1/projects'

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
      return_type = opts[:return_type] || 'ProjectListResponse' 

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
        @api_client.config.logger.debug "API called: ProjectsApi#retrieve_projects\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
