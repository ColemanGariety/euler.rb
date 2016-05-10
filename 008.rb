series = File.read('008_series.txt').gsub!(/\s/, '').split('').map {|c| c.to_i}
p series.each_cons(13).map { |a| a.reduce(&:*) }.max
