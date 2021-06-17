#into to time objects
a = Time.new
puts a
a = Time.new(2015, 3, 4, 20)
#a = Time.new(2015, 3)
puts a
puts

#Instance methods on a time object
today = Time.now
p today
p today.month
p today.day
p today.year
puts
p today.hour
p today.min
p today.sec
puts

sometime = Time.new(2016, 11, 14)
p sometime.yday
p sometime.wday

puts

#Predicate methods on Time objects
birhday = Time.new(1991, 4, 12)
p birhday.monday?
p birhday.tuesday?
p birhday.wednesday?
p birhday.thursday?
p birhday.friday?
p birhday.saturday?
p birhday.sunday?
puts
p birhday.dst?
puts

#add or subtract time by seconds
p birhday
p birhday + 60 + 30
puts

def fid_day_of_year_by_number(number)
  current = Time.new(2016, 1, 1)
  one_day= 60 * 60 * 24
  until current.yday == number
    current += one_day
  end
  current
end

p fid_day_of_year_by_number(38)
puts

#the comparable methods on a time object
birhday = Time.new(1991, 4, 12)
summer = Time.new(2016, 6, 21)
independence_day = Time.new(2016, 7, 4)
winter = Time.new(2016, 12, 21)

p birhday < summer
p independence_day < winter
p independence_day.between?(birhday, winter)
puts

#convert time object to other object
someday = Time.new(2000, 2, 15)
p someday.to_s
p someday.ctime
p someday.to_a
puts

#convert time object to formatted string
today = Time.now
p today.strftime("%d/%m/%Y")

# %Y - Year with century if provided, will pad result at least 4 digits.
#          -0001, 0000, 1995, 2009, 14292, etc.
#  %C - year / 100 (rounded down such as 20 in 2009)
#  %y - year % 100 (00..99)
#  %m - Month of the year, zero-padded (01..12)
#          %_m  blank-padded ( 1..12)
#          %-m  no-padded (1..12)
#  %B - The full month name (``January'')
#          %^B  uppercased (``JANUARY'')
#  %b - The abbreviated month name (``Jan'')
#          %^b  uppercased (``JAN'')
#  %h - Equivalent to %b
#  %d - Day of the month, zero-padded (01..31)
#          %-d  no-padded (1..31)
#  %e - Day of the month, blank-padded ( 1..31)
#  %j - Day of the year (001..366)
puts

#extend time object with requiere time
require 'time'

puts Time.parse("2016-01-05")
puts Time.strptime("2016-01-05", "%Y-%d-%m")
