# simple_Sorting.rb
# Challenge Description:

# Write a program which sorts numbers.
# Input sample:

# Your program should accept as its first argument a path to a filename. Input example is the following

# 70.920 -38.797 14.354 99.323 90.374 7.581
# -37.507 -3.263 40.079 27.999 65.213 -55.552

# Output sample:

# Print sorted numbers in the following way.

# -38.797 7.581 14.354 70.920 90.374 99.323
# -55.552 -37.507 -3.263 27.999 40.079 65.213

File.open(ARGV[0]).each_line do |line|
  args = line.strip.split(" ").map { |i| i.to_f }
  args.sort.each { |a| print '%.3f' % a, " "}
  print "\n"
end