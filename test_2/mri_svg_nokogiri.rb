require "nokogiri"
puts "nokogiri version".ljust(40,'.')+Nokogiri::VERSION
svg_filename=ARGV.first
puts "exploring svg".ljust(40,'.')+ svg_filename

xml=Nokogiri.parse(File.open(svg_filename))
puts "reading xml".ljust(40,'.')+"ok" if xml

svg=xml.xpath('//svg')
puts "extracting svg".ljust(40,'.')+"ok" if svg

groups=svg.xpath('//g')
puts "extracting <g> groups".ljust(40,'.')+groups.size.to_s
groups.each_with_index do |g,idx|
  puts "group #{idx} :  #{g.class}"
end
