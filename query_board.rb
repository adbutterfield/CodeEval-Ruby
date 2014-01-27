# query_board.rb

# Challenge Description:

# There is a board (matrix). Every cell of the board contains one integer, which is 0 initially.

# The next operations can be applied to the Query Board:
# SetRow i x: it means that all values in the cells on row "i" have been changed to value "x" after this operation.
# SetCol j x: it means that all values in the cells on column "j" have been changed to value "x" after this operation.
# QueryRow i: it means that you should output the sum of values on row "i".
# QueryCol j: it means that you should output the sum of values on column "j".

# The board's dimensions are 256x256
# "i" and "j" are integers from 0 to 255
# "x" is an integer from 0 to 31
# Input sample:

# Your program should accept as its first argument a path to a filename. Each line in this file contains an operation of a query. E.g.

# SetCol 32 20
# SetRow 15 7
# SetRow 16 31
# QueryCol 32
# SetCol 2 14
# QueryRow 10
# SetCol 14 0
# QueryRow 15
# SetRow 10 1
# QueryCol 2

# Output sample:

# For each query, output the answer of the query. E.g.

# 5118
# 34
# 1792
# 3571

$size = 256
$range = (0...$size)
$board = Array.new($size) { Array.new($size, 0) }

def board_query(args)
  row_col = args[1].to_i
  val = args[2].to_i
  case args[0]
  when 'SetCol'
    $range.each { |i| $board[i][row_col] = val }
  when 'SetRow'
    $range.each { |i| $board[row_col][i] = val }
  when 'QueryCol'
    puts $range.inject(0) { |sum, i| sum + $board[i][row_col] }
  when 'QueryRow'
    puts $range.inject(0) { |sum, i| sum + $board[row_col][i] }
  end 
end

File.open(ARGV[0]).each_line do |line|
  args = line.strip.split(" ")
  board_query(args)
end
