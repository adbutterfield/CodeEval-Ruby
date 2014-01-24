# reverse_words.rb

# Challenge Description:

# Write a program to reverse the words of an input sentence.
# Input sample:

# The first argument will be a path to a filename containing multiple sentences, one per line. Possibly empty lines too. E.g.

# Hello World
# Hello CodeEval

# Output sample:

# Print to stdout, each line with its words reversed, one per line. Empty lines in the input should be ignored. Ensure that there are no trailing empty spaces on each line you print. E.g.

# World Hello
# CodeEval Hello

File.open(ARGV[0]).each_line do |line|

  a = line.split(" ")
  a.reverse_each {|x| print x, " " }
  print "\n" if line = gets
  
end