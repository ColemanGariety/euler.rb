require 'benchmark'

# puts Benchmark.measure {
#   def pythagorean_triplet(sum, a)
#     return (((sum ** 2) / 2) - (sum * a)) / (sum - a)
#   end

#   sum = 1000
#   a = sum / 3
#   b = pythagorean_triplet(sum.to_f, a)

#   until (b % 1).zero?
#     a -= 1
#     b = pythagorean_triplet(sum.to_f, a)
#   end

#   puts (a * b * (sum - b - a))
# }

# from the forums:
puts Benchmark.measure {
  n = 1000
  
  a = (1..n / 2).to_a.find { |a|
    (n * (n / 2 - a) % (n - a)).zero?
  }
  
  b = n * (n / 2 - a) / (n - a)

  puts (a * b * (n - b - a))
}
