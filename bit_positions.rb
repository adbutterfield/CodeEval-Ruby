# bit_positions.rb

# Challenge Description:

# Given a number n and two integers p1,p2 determine if the bits in position p1 and p2 are the same or not. Positions p1 and p2 and 1 based.
# Input sample:

# The first argument will be a path to a filename containing a comma separated list of 3 integers, one list per line. E.g.

# 86,2,3
# 125,1,2

# Output sample:

# Print to stdout, 'true'(lowercase) if the bits are the same, else 'false'(lowercase). E.g.

# true
# false

File.open(ARGV[0]).each_line do |line|
  n, p1, p2 = line.split(",")
    n = n.to_i
    p1 = p1.to_i - 1
    p2 = p2.to_i - 1
  if n[p1] == n[p2]
    print "true"
  else
    print "false"
  end
    print "\n" if line = gets
end