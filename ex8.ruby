#!/usr/bin/ruby -w
#
#Ce programme liste recursivement les fichiers executables dont le propriétaire est root dont la taille est supérieur à 1mo ou antérieur au 1/8/12

if ARGV.count!= 1 or File.directory?(ARGV[0]) == false
	puts "Necessite un repertoire valide en paramètre"
	exit
end

def meth (rep)
	Dir.foreach(rep)do|f|
    		if ((File.stat("f").executable? && File.stat("f").file? && File.stat("f").uid == 0) && ( File.stat("f").size >= 1024*8 || (File.stat("f").mtime.year <= 2012 && File.stat("f").mtime.moth <= 8 || File.stat("f").mtime.day == 1))) then
			puts " #{f} "
     		elsif File.directory?("f") then
			 meth(f)
		end
	end
end
  
meth (ARGV[0])
