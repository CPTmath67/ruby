#!/usr/bin/ruby -w

if ARGV.count != 1
	puts "usage #{$0} fichier"
	exit
end

tab = {}

IO.readlines(ARGV[0]).each do |line|
	infos = line.split(':')
	tab[infos[0].strip] = tab[infos[1]]
end 

puts "voila l'annuaire"
tab.sort.each { |cle, valeur| puts "#{cle} -> #{valeur} " }



