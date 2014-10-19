#!/usr/bin/env ruby

stats = Hash.new(0)

ARGF.each_line do |line|
	line.strip!
	key, value = line.split(' ')
	stats[key] = value.to_i
end

stats =  stats.sort_by { |key, value| value }
stats.reverse.each { |k,v| puts "#{k}: #{v}" }
	