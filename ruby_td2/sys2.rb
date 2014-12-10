#!/usr/bin/ruby
#-*- coding: utf-8 -*-

user=[]
split=[]
nohome=[]
i=0
j=0
fichier = "/etc/passwd"

File.readlines(fichier).each do |line|
	split = line.split(':')
	if (split[5] != "/")
		user[i] = split[0].chomp
		i += 1
	else
		nohome[j] = split[0].chomp
		j += 1
	end

end	
user.sort!
nohome.sort!
puts "Les utilisateurs suivant disposent d'un repertoire home:" 
user.each do |object| 
	puts "-#{object}"
end
puts "Les utilisateurs suiavnts ne diposent pas d'un repertoire home:"
nohome.each do |object| 
	puts "-#{object}"
end
