#!/usr/bin/env ruby

%w| 1-10 11-20 21-30 31-40 41-50 51-60 61-70 71-80 81-100|.each do |s|
  f = File.dirname(__FILE__) + '/problems/' << s << '.rb'
  require f if File.exist?(f)
end
