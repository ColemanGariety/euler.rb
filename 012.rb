require 'benchmark'
require 'prime'

puts Benchmark.measure {
  def tau(i)
    i.prime_division.reduce(1) { |r, pair| (pair[1] + 1) * r }
  end

  def triangularize(i)
    ((i + 1) * i) / 2
  end
  
  cap = 500
  i = 1

  until tau(triangularize(i)) > cap
    i += 1
  end  

  p triangularize(i)
}
