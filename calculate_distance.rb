# calculate_distance.rb

# Challenge Description:

# You have coordinates of 2 points and need to find the distance between them.
# Input sample:

# Your program should accept as its first argument a path to a filename. Input example is the following

# (25, 4) (1, -6)
# (47, 43) (-25, -11)

# All numbers in input are integers between -100 and 100.
# Output sample:

# Print results in the following way.

# 26
# 90

# You don't need to round the results you receive.
# They must be integer numbers between -100 and 100. 

File.open(ARGV[0]).each_line do |line|
  args = line.split.map { |e| e.gsub(/[\)\(\,]/, '').to_i  }
  x1, y1, x2, y2 = args
  puts Math.sqrt((x1 - x2)**2 + (y1 - y2)**2).to_i
end