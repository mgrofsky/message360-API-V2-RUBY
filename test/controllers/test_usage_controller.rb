# ytel_apiv3
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class UsageControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.usage
  end

  # Retrieve usage metrics regarding your Ytel account. The results includes inbound/outbound voice calls and inbound/outbound SMS messages as well as carrier lookup requests.
  def test_test_list_usage()
    # Parameters for the API call
    product_code = nil
    start_date = nil
    end_date = nil
    include_sub_accounts = nil

    # Perform the API call through the SDK function
    result = self.class.controller.create_list_usage(product_code, start_date, end_date, include_sub_accounts)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

end