require 'humanize'

p (1..1000).map{|i| i.humanize}.join('').gsub(/[- ]/, '').size
