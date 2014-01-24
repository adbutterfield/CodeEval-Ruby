# sum_of_primes.rb
# Challenge Description:

# Write a program to determine the sum of the first 1000 prime numbers.
# Input sample:

# There is no input for this program.
# Output sample:

# Your program should print the sum on stdout, i.e.

# 3682913

require "prime"
result = Prime.first(1000)
print result.inject(:+)
