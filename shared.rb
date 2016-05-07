module Shared
  Fibonacci = Enumerator.new do |y|
    a = b = 1
    loop do 
      y << a
      a, b = b, a + b
    end
  end

  def palindrome?(x)
    x.to_s.reverse == x.to_s
  end
end
