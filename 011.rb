require 'benchmark'
require 'matrix'

puts Benchmark.measure {
  width = 20
  height = 20
  x = y = product = 0
  z = 4

  # generate the matrix
  grid = File.read('011_grid.txt').split(' ').map(&:to_i).each_slice(20).to_a

  # find the greatest product
  until [x, y, 19].uniq.count == 1 do  
    product = [(0..z - 1).collect{ |i| grid[y + i].to_a[x + i] || 1 }.reduce(&:*), # three o'clock
               (0..z - 1).collect{ |i| grid[y + i].to_a[x + i] || 1 }.reduce(&:*), # half past four
               (0..z - 1).collect{ |i| grid.transpose[x][y + i] || 1 }.reduce(&:*), # six o'clock
               (0..z - 1).collect{ |i| (x - i > -1) ? (grid[y + i].to_a[x - i] || 1) : 1 }.reduce(&:*), # half past seven
               product].max

    # iterate over the entirematrix
    if x < width - 1
      x += 1
    elsif y < height - 1
      y += 1 and x = 0
    end
  end

  puts product
}
