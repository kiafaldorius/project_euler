#!/usr/bin/env ruby

# Join is the string to join, pass in nil to return result as array
def euler_24(permutation = 1000000, digits = %w{ 0 1 2 3 4 5 6 7 8 9 }, join = '', lex = true)
  digits.sort! if lex
  result = digits.permutation(digits.length).to_a[permutation-1]
  join.nil? ? result : result.join(join)
end

#  A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:
#
#  012   021   102   120   201   210
#
#  What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

