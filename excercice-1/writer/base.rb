module Writer
  class Writer::Base
    attr_reader :input, :path

    def initialize(input, path)
      @input = input
      @path = path

      validate!
    end

    def write
      File.open(path, 'w') { |file| file.write(input) }
    end

    private

    def validate!
      raise(ArgumentError, "Invalid format: #{extension}") unless valid_format?
    end

    def valid_format?
      raise(NotImplementedError, 'Not implemented yet')
    end

    def extension
      File.extname(path.to_s)
    end
  end
end
