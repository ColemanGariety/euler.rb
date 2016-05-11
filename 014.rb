require 'benchmark'

puts Benchmark.measure {
  @chain = { 1 => 1 }

  def collatz_seq(i)
    n = i
    count = 0
    while @chain[n].nil?
      count += 1
      n = n % 2 == 0 ? n / 2 : 3 * n + 1
    end
    @chain[i] = @chain[n] + count
  end
  
  result = 0
  longest = 0

  3.step(1000000, 2) do |i|
    if collatz_seq(i) > longest
      result = i
      longest = collatz_seq(i)
    end
  end

  p result
}
