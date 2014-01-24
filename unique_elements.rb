# unique_elements.rb

# Challenge Description:

# You are given a sorted list of numbers with duplicates. Print out the sorted list with duplicates removed.
# Input sample:

# File containing a list of sorted integers, comma delimited, one per line. E.g.

# 1,1,1,2,2,3,3,4,4
# 2,3,4,5,5

# Output sample:

# Print out the sorted list with duplicates removed, one per line.
# E.g.

# 1,2,3,4
# 2,3,4,5

File.open(ARGV[0]).each_line do |line|
  print line.strip.split(",").uniq.map { |r| r.to_i }.sort.join(",") 
  print "\n" if line = gets
end