# prime_palindrome.rb

# Challenge Description:

# Write a program to determine the biggest prime palindrome under 1000.
# Input sample:

# There is no input for this program.
# Output sample:

# Your program should print the largest palindrome on stdout, i.e.

# 929


require 'prime'

def palindrome?(n)
  n = n.to_s
  n == n.reverse
end

result = []
Prime.map { |p| break if p > 1000; result << p if palindrome?(p) }
print result.last