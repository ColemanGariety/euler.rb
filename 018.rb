require 'benchmark'

puts Benchmark.measure {
  triangle = File.read('018_grid.txt').split("\n").map{|a| a.split(" ").map{|s| s.to_i}}

  while triangle.size > 1
    below = triangle.pop
    triangle.last.map!.with_index do |a, i|
      a + [below[i], below[i + 1]].max
    end
  end

  p triangle[0][0]
}
