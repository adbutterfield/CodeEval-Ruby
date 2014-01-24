# sum_of_integers_from_file.rb

# Challenge Description:

# Print out the sum of integers read from a file.
# Input sample:

# The first argument to the program will be a path to a filename containing a positive integer, one per line. E.g.

# 5
# 12

# Output sample:

# Print out the sum of all the integers read from the file. E.g.

# 17

result = []
File.open(ARGV[0]).each_line do |line|
 
  result << line.strip
end
print result.map { |n| n.to_i }.inject(:+)
