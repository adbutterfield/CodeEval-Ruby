# fibonacci_series.rb

# Challenge Description:

# The Fibonacci series is defined as: F(0) = 0; F(1) = 1; F(n) = F(n-1) + F(n-2) when n>1. Given a positive integer 'n', print out the F(n).
# Input sample:

# The first argument will be a path to a filename containing a positive integer, one per line. E.g.

# 5
# 12

# Output sample:

# Print to stdout, the fibonacci number, F(n). E.g.

# 5
# 144

File.open(ARGV[0]).each_line do |line|

  n = line.to_i + 1
  i1, i2 = 0, 1
  result = []
  n.times do
    result << i1
    i1, i2 = i2, i1+i2
  end
  print result.last
  print "\n" if line = gets

end