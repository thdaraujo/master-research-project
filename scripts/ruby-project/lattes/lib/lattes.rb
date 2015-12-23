require "lattes/version"
require "nokogiri"

module Lattes
  def self.hello
    "Lattes is now doing some stuff."
  end

  def parse_xml(path)
    puts "parsing file: #{path}"

    f = File.open("../../../cvs/curriculo.xml")
    doc = Nokogiri::XML(f)

    p doc.xpath("//CURRICULO-VITAE")
    p doc.xpath("//CURRICULO-VITAE ").children.map{|n| n.name }

  end

end
