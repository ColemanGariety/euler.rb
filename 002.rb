require_relative "shared"

include Shared

p Fibonacci.take_while{|i| i <= 4000000}.select(&:even?).reduce(&:+)
