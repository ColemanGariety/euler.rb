p File.read('013_series.txt').split(' ').inject(0) { |s, n| s + n.to_i }.to_s[0, 10]
