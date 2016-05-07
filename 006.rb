sum_squares = (1..100).map{ |n| n ** 2 }.reduce(:+)
square_sum = (1..100).reduce(:+) ** 2
p square_sum - sum_squares
