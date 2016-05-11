module Shared
  Fibonacci = Enumerator.new do |y|
    a = b = 1
    loop do 
      y << a
      a, b = b, a + b
    end
  end

  def self.prime_by_trial_division?(n)
    if n.even?
      return n == 2
    else
      return (3..Math.sqrt(n)).step(2).none? { |d| n % d == 0 }
    end
  end

  def self.palindrome?(x)
    x.to_s.reverse == x.to_s
  end

  def self.sum_digits(n)
    n.to_s.each_char.map {|c| c.to_i }.reduce(:+)
  end
end
