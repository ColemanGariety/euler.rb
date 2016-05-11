require_relative "shared"

p Shared::Fibonacci.take_while{|i| i <= 4000000}.select(&:even?).reduce(&:+)
