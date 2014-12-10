#!/usr/bin/ruby
#-*- coding: utf-8 -*-
quota=ARGV[0]
user=[]
split=[]
i=0

fichier = "/etc/passwd"

def dirsize(user){
	size=0
	dir = Dir.home(user)
	Dir.foreach("dir")|x|
		if ( x.file?) 
			size += (x.size / 1000 )
		end
	dirsize(user)
	end

return size
}

File.readlines(fichier).each do |line|
	split = line.split(':')
	if ((split[2].to_i >= 1000)&&(split[5] != "/")&&(dirsize(split[0].chomp) > quota ))
		user[i] = split[0].chomp
		i += 1
	end

end

user.sort!
user.each do |object| 
	puts "#{object}"
end

home=Dir.home("math")
puts "#{home}"
