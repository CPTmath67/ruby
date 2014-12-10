#!/usr/bin/ruby
#-*- coding: utf-8 -*-

user=[]
split=[]
i=0

fichier = "/etc/passwd"

File.readlines(fichier).each do |line|
	split = line.split(':')
	if (split[2].to_i >= 1000)
		user[i] = split[0].chomp
		i += 1
	end

end

user.sort!
user.each do |object| 
	puts "#{object}"
end
