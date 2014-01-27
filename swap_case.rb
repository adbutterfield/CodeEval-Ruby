# swap_case.rb

# Challenge Description:

# Write a program which swaps letters' case in a sentence. All non-letter characters should remain the same.
# Input sample:

# Your program should accept as its first argument a path to a filename. Input example is the following

# Hello world!
# JavaScript language 1.8
# A letter

# Output sample:

# Print results in the following way.

# hELLO WORLD!
# jAVAsCRIPT LANGUAGE 1.8
# a LETTER

File.open(ARGV[0]).each_line do |line|
  puts line.swapcase
end