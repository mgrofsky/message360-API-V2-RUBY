# ytel_apiv3
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class ConferenceControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.conference
  end

  # Retrieve a list of conference objects.
  def test_test_list_conferences()
    # Parameters for the API call
    page = nil
    pagesize = nil
    friendly_name = nil
    date_created = nil

    # Perform the API call through the SDK function
    result = self.class.controller.create_list_conferences(page, pagesize, friendly_name, date_created)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)
  end

end