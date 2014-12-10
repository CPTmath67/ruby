#!/usr/bin/ruby
#
nb=0
qte=0
liste_machine={}
liste_fichier={}
fichier = 'access.log.1'

File.readlines(fichier).each do|line|
	if line =~ /^([^ ]+) .+ (\/[^ ]*) .+ (-|\d+)$/ then
		qte += $3.to_i
		machie=$1
		fichier=$2
		donnee=$3

		#MAJ liste de machine
		if !liste_machines.has.key?(machine)
			liste_machines[machines] = 1
		end

		#MAJ rep demandés
		if !liste_fichier.has.key?(fichier)
			liste_fichier[fichier]=1
		else
			liste_fichier[fichier]+=1
		end
		nb += 1
	end
end
puts "nombre totale de requêtes: #{nb}"
puts "Quantité totale de donnée:#{qte}"
puts "liste des maachnes:"
liste_machines.each{|mac,val| puts"\#{mac}")

#Trie de la liste fichiers
	
