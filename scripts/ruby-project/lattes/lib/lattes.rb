require "lattes/version"
require "nokogiri"

module Lattes
  def self.hello
    "Lattes is now doing some stuff."
  end

  def self.parse_xml(path)
    puts "parsing file: #{path}"

    f = File.open(path)
    doc = Nokogiri::XML(f)
    cv = doc.xpath("//CURRICULO-VITAE ").children.map{|n| n.name }
    cv
  end

end
