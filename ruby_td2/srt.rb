#!/usr/bin/ruby
# -*- coding: utf-8 -*-

fichier = ARGV[0]
decalage = ARGV[1]
sortie = ARGV[2]

of = File.open(sortie, 'w')
if File.file?(fichier)&&File.writable?(fichier)

	File.readlines(fichier).each do |line|
		if line =~ /(\d{2}:\d{2}:)(\d{2}),(\d{3})( --> \d{2}:\d{2}:)(\d{2}),(\d{3})/ then
			#
		end
	end
else 
	puts "Erreur #{fichier} n'existe pas ou n'est pas accessible}"
end
