#!/usr/bin/env ruby

(1..10).each do |i|
  file = File.dirname(__FILE__) + '/1-10/' << i.to_s << '.rb'
  require file if File::exist? file
end
