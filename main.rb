require './writer_factory.rb'

puts 'Qual arquivo você deseja salvar?'
puts 'JSON'
puts 'XML'

option = gets.chomp

WriterFactory.create(option).writer
