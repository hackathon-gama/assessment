require './writer/base.rb'

module Writer
  class Json < Writer::Base
    private

    def valid_format?
      extension == '.json'
    end
  end
end
