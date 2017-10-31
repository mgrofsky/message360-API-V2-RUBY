# This file was automatically generated for message360 by APIMATIC v2.0
# ( https://apimatic.io ).

module Message360
  # ErrorsModel Model.
  class ErrorsModel < BaseModel
    # TODO: Write general description for this method
    # @return [List of ErrorModel]
    attr_accessor :error

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['error'] = 'Error'
      end
      @_hash
    end

    def initialize(error = nil)
      @error = error
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      error = nil
      unless hash['Error'].nil?
        error = []
        hash['Error'].each do |structure|
          error << (ErrorModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      ErrorsModel.new(error)
    end
  end
end
