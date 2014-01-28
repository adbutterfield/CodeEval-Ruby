# even_numbers.rb

# Challenge Description:

# Write a program which checks input numbers and determines whether a number is even or not.
# Input sample:

# Your program should accept as its first argument a path to a filename. Input example is the following

# 701
# 4123
# 2936

# Output sample:

# Print 1 if the number is even or 0 if the number is odd.

# 0
# 0
# 1

# All numbers in input are integers > 0 and < 5000. 

File.open(ARGV[0]).each_line do |line|
  if line.to_i.even? then puts 1
  else puts 0
  end
end
