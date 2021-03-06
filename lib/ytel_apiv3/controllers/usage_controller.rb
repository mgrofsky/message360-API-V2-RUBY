# ytel_apiv3
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApiv3
  # UsageController
  class UsageController < BaseController
    @instance = UsageController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Retrieve usage metrics regarding your Ytel account. The results includes
    # inbound/outbound voice calls and inbound/outbound SMS messages as well as
    # carrier lookup requests.
    # @param [ProductCodeEnum] product_code Optional parameter: Filter usage
    # results by product type.
    # @param [String] start_date Optional parameter: Filter usage objects by
    # start date.
    # @param [String] end_date Optional parameter: Filter usage objects by end
    # date.
    # @param [String] include_sub_accounts Optional parameter: Will include all
    # subaccount usage data
    # @return String response from the API call
    def create_list_usage(product_code = nil,
                          start_date = nil,
                          end_date = nil,
                          include_sub_accounts = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/usage/listusage.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'ProductCode' => product_code,
        'startDate' => start_date,
        'endDate' => end_date,
        'IncludeSubAccounts' => include_sub_accounts
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end
  end
end
