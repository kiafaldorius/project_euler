#!/usr/bin/env ruby

(11..20).each do |i|
  file = File.dirname(__FILE__) + '/11-20/' << i.to_s << '.rb'
  require file if File::exist? file
end
