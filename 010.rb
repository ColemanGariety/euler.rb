require 'prime'

puts Prime.take_while{ |p| p < 200000 }.reduce(&:+)
