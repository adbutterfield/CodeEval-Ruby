# happy_numbers.rb

# Challenge Description:

# A happy number is defined by the following process. 
# Starting with any positive integer, 
# replace the number by the sum of the squares of its digits, 
# and repeat the process until the number equals 1 (where it will stay), 
# or it loops endlessly in a cycle which does not include 1. 
# Those numbers for which this process ends in 1 are happy numbers, 
# while those that do not end in 1 are unhappy numbers.

# Input sample:

# The first argument is the pathname to a file which contains test data, one test case per line. Each line contains a positive integer. E.g.

# 1
# 7
# 22

# Output sample:

# If the number is a happy number, print out 1. If not, print out 0. E.g

# 1
# 1
# 0

File.open(ARGV[0]).each_line do |line|
  n = line.strip.to_i
  
  def is_happy?(n, seen=[])
    return 1 if n == 1
    return 0 if seen.include?(n)
    seen << n
    sum_of_squares = n.to_s.each_char.map { |i| (i.to_i)**2 }.inject(:+)
    is_happy?(sum_of_squares, seen)

  end
  puts is_happy?(n)
end
