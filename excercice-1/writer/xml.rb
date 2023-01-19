require './writer/base.rb'

module Writer
  class Writer::Xml < Base
    private

    def valid_format?
      extension == '.xml'
    end
  end
end
