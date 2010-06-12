#!/usr/bin/env ruby

# takes an absolute path to the file
def euler_22(file = File.dirname(__FILE__) + '/names.txt')
  data = File.read(file) if file.is_a?(String)
  total = 0
  data.split(',').sort!.each_with_index do |name, i|
    subtotal = 0
    name.tr!('"', '').each_byte do |byte|
      subtotal += byte - 64
    end
    total += subtotal * (i+1)
  end
  total
end

#  Using names.txt  (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
#
#  For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
#
#  What is the total of all the name scores in the file?

