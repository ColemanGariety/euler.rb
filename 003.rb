f = 2
i = 600851475143

while f != i do
  if (i % f) == 0
    i = i / f
  else
    f += 1
  end
end

p f
