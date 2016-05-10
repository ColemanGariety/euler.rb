require 'benchmark'

puts Benchmark.measure {
  sum = 0

  for i in 1..999
    sum += i if (i % 3 == 0) || (i % 5 == 0)
  end

  puts sum
}
