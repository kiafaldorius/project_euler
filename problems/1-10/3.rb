#!/usr/bin/env ruby

def euler_3(num = 600851475143)
	for i in Math.sqrt(num).to_i.downto(1) do
	  x=i and break if num%i == 0 and '1'*i !~ /^1?$|^(11+?)\1+$/
	end
	x
end

#The prime factors of 13195 are 5, 7, 13 and 29.
#
#What is the largest prime factor of the number 600851475143 ?
