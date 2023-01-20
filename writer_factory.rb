
require './json_writer.rb'
require './xml_writer.rb'

class WriterFactory
  WRITERS = {
    'JSON' => JsonWriter,
    'XML' => XMLWriter
  }

  def self.create(type)
    WriterFactory::WRITERS[type] || raise(TypeError, 'Invalid writer type')
  end
end
