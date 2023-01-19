require './writer/base.rb'

module Writer
  class Writer::Csv < Base
    private

    def valid_format?
      extension == '.csv'
    end
  end
end
