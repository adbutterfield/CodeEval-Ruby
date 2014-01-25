# armstrong_numbers.rb
# Challenge Description:

# An Armstrong number is an n-digit number that is equal to the sum of the n'th powers of its digits. Determine if the input numbers are Armstrong numbers.
# Input sample:

# Your program should accept as its first argument a path to a filename. Each line in this file has a positive integer. E.g.

# 6
# 153
# 351

# Output sample:

# Print out True/False if the number is an Armstrong number or not. E.g.

# True
# True
# False

def armstrong?(number)
  as_array = number.split("").map { |i| i.to_i  }
  exp = as_array.length
  total = 0
  total_sum = as_array.each { |i| total += i**exp }
  return number.to_i == total
end

File.open(ARGV[0]).each_line do |line|
  number = line.strip
  puts (armstrong?(number)) ? "True" : "False"
end