# This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io ).

module Message360
  class AddressController < BaseController
    @@instance = AddressController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # To add an address to your address book, you create a new address object. You can retrieve and delete individual addresses as well as get a list of addresses. Addresses are identified by a unique random ID.
    # @param [String] name Required parameter: Name of user
    # @param [String] address Required parameter: Address of user.
    # @param [String] country Required parameter: Must be a 2 letter country short-name code (ISO 3166)
    # @param [String] state Required parameter: Must be a 2 letter State eg. CA for US. For Some Countries it can be greater than 2 letters.
    # @param [String] city Required parameter: City Name.
    # @param [String] zip Required parameter: Zip code of city.
    # @param [String] description Optional parameter: Description of addresses.
    # @param [String] email Optional parameter: Email Id of user.
    # @param [String] phone Optional parameter: Phone number of user.
    # @param [String] response_type Optional parameter: Response type either json or xml
    # @return String response from the API call
    def create_address(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'name' => options['name'],
        'address' => options['address'],
        'country' => options['country'],
        'state' => options['state'],
        'city' => options['city'],
        'zip' => options['zip']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/address/createaddress.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'Name' => options['name'],
        'Address' => options['address'],
        'Country' => options['country'],
        'State' => options['state'],
        'City' => options['city'],
        'Zip' => options['zip'],
        'Description' => options['description'],
        'email' => options['email'],
        'Phone' => options['phone']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # To delete Address to your address book
    # @param [String] address_sid Required parameter: The identifier of the address to be deleted.
    # @param [String] response_type Optional parameter: Response type either json or xml
    # @return String response from the API call
    def create_delete_address(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'address_sid' => options['address_sid']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/address/deleteaddress.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'AddressSID' => options['address_sid']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # Validates an address given.
    # @param [String] address_sid Required parameter: The identifier of the address to be verified.
    # @param [String] response_type Optional parameter: Response type either json or xml
    # @return String response from the API call
    def create_verify_address(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'address_sid' => options['address_sid']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/address/verifyaddress.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'AddressSID' => options['address_sid']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # List All Address 
    # @param [Integer] page Optional parameter: Return requested # of items starting the value, default=0, must be an integer
    # @param [Integer] page_size Optional parameter: How many results to return, default is 10, max is 100, must be an integer
    # @param [String] address_sid Optional parameter: addresses Sid
    # @param [String] date_created Optional parameter: date created address.
    # @param [String] response_type Optional parameter: Response Type either json or xml
    # @return String response from the API call
    def create_list_address(options = Hash.new)

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/address/listaddress.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'Page' => options['page'],
        'PageSize' => options['page_size'],
        'AddressSID' => options['address_sid'],
        'DateCreated' => options['date_created']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end

    # View Address Specific address Book by providing the address id
    # @param [String] address_sid Required parameter: The identifier of the address to be retrieved.
    # @param [String] response_type Optional parameter: Response Type either json or xml
    # @return String response from the API call
    def create_view_address(options = Hash.new)

      # validate required parameters
      validate_parameters({
        'address_sid' => options['address_sid']
      })

      # prepare query url
      _query_builder = Configuration.get_base_uri()
      _query_builder << '/address/viewaddress.{ResponseType}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ResponseType' => options['response_type']
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare form parameters	  
      _parameters = {
        'AddressSID' => options['address_sid']
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, parameters: _parameters
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      return _context.response.raw_body
    end
  end
end
