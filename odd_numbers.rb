# odd_numbers.rb

# Challenge Description:

# Print the odd numbers from 1 to 99.
# Input sample:

# There is no input for this program.
# Output sample:

# Print the odd numbers from 1 to 99, one number per line. 

n = 1..99

n.each { |i| puts i if i.odd?}