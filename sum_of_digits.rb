# sum_of_digits.rb

# Challenge Description:

# Given a positive integer, find the sum of its constituent digits.
# Input sample:

# The first argument will be a path to a filename containing positive integers, one per line. E.g.

# 23
# 496

# Output sample:

# Print to stdout, the sum of the numbers that make up the integer, one per line. E.g.

# 5
# 19

File.open(ARGV[0]).each_line do |line|
  print line.strip.chars.map { |n| n.to_i }.inject(:+)
  print "\n" if line = gets
end