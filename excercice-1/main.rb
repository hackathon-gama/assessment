require './writer/json.rb'
require './writer/xml.rb'
require './writer/csv.rb'

json = <<HEREDOC
{
  "name": "Weder Cabral Mendes",
  "age": 33,
  "city": "Jataí"
}
HEREDOC

xml = <<HEREDOC
<?xml version="1.0" encoding="UTF-8" ?>
<root>
  <name>Weder Cabral Mendes</name>
  <age>33</age>
  <city>Jataí</city>
</root>
HEREDOC

csv = <<HEREDOC
name,age,city
Weder Cabral Mendes,33,Jataí
HEREDOC


Writer::Json.new(json, 'teste.json').write
Writer::Xml.new(xml, 'teste.xml').write
Writer::Csv.new(csv, 'teste.csv').write
