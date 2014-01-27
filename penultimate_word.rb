# penultimate_word.rb

# Challenge Description:

# Write a program which finds the next-to-last word in a string.
# Input sample:

# Your program should accept as its first argument a path to a filename. Input example is the following

# some line with text
# another line

# Each line has more than one word.
# Output sample:

# Print the next-to-last word in the following way.

# with
# another

File.open(ARGV[0]).each_line do |line|
  args = line.strip.split(" ")
  puts args[-2]
end