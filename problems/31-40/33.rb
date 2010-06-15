#!/usr/bin/env ruby


def euler_33(digits = 2)
  require 'mathn'
  range = ((10**(digits-1))..(10**digits-1))
  result = Rational.new!(1, 1)
  range.each do |n|
    range.each do |d|
      next if d%10==0 or n%10==0 or n%11==0 or n>=d or (n%5==0 and d%5)==0
      r = Rational(n, d)
      result *= r if r == Rational((n/10).to_i, d%10) and n%10 == (d/10).to_i
    end
  end
  result.denominator
end

#  The fraction ^(49)/_(98) is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that ^(49)/_(98) = ^(4)/_(8), which is correct, is obtained by cancelling the 9s.
#
#  We shall consider fractions like, ^(30)/_(50) = ^(3)/_(5), to be trivial examples.
#
#  There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.
#
#  If the product of these four fractions is given in its lowest common terms, find the value of the denominator.

