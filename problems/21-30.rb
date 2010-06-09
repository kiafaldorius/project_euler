#!/usr/bin/env ruby

(21..30).each do |i|
  file = File.dirname(__FILE__) + '/21-30/' << i.to_s << '.rb'
  require file if File::exist? file
end
