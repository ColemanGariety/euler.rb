require 'benchmark'

puts Benchmark.measure {
  size = 20
  a = [1] * size

  for i in (0...size)
    for j in (0...i)
      a[j] = a[j] + a[j - 1]
    end
    a[i] = a[i - 1] * 2
  end

  p a.last
}
