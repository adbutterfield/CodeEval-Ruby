# capitalize_words.rb

# Challenge Description:

# Write a program which capitalizes the first letter of each word in a sentence.
# Input sample:

# Your program should accept as its first argument a path to a filename. Input example is the following

# Hello world
# javaScript language
# a letter
# 1st thing

# Output sample:

# Print capitalized words in the following way.

# Hello World
# JavaScript Language
# A Letter
# 1st Thing

File.open(ARGV[0]).each_line do |line|
  puts line.strip.split().map { |s| s[0].upcase + s[1..-1] }.join(" ")
end