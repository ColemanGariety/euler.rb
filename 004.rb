require_relative "shared"

include Shared

result = 0

(100..999).each do |a|
  (a..999).each do |b|
    product = a * b
    result = [product, result].max if palindrome?(product)
  end
end

p result
