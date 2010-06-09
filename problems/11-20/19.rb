#!/usr/bin/env ruby

# hop is the number of months to jump
def euler_19(wday = 'Sunday', start='1901-01-01', stop='2000-12-31', hop = 1)
  require 'date'
  # the next four lines is just a trick so it'll accept wday names and string dates (purely convenience)
  wday = Date::DAYNAMES.index(wday) unless wday.is_a?(Fixnum)
  start = Date.parse(start.to_s) unless start.is_a?(Date)
  stop = Date.parse(stop.to_s) unless stop.is_a?(Date)
  return nil unless wday.is_a?(Fixnum) and wday < 7 and wday >= 0 and stop.is_a?(Date) and start.is_a?(Date)
  count = 0
  until start >= stop do
    count+=1 if start.wday == wday
    start>>=hop
  end
  count
end

#  You are given the following information, but you may prefer to do some research for yourself.
#
#      * 1 Jan 1900 was a Monday.
#      * Thirty days has September,
#        April, June and November.
#        All the rest have thirty-one,
#        Saving February alone,
#        Which has twenty-eight, rain or shine.
#        And on leap years, twenty-nine.
#      * A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
#
#  How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

