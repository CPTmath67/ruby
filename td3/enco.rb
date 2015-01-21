#!/bin/ruby
*-* coding utf-8 *-*

#encodage multiprocessus


nb_proc = 4
rep_trait = ARGV[1]
fichier = ARGV[2]
script = ARGV[3]
rep_res = "/tmp/res	"
log = "logfile"
lock = "/tmp/lockfile"

Dir.chdir(rep_trait)

def liste_files(fichier){

puts "veuillez entrez le nom des fichiers séparé par un espace:"
files = gets.chomp

File.open("fichier","a"){
	tab = files.split(/ /)
	tab.each{|val|
		fichier.write("val")
		fichier.write("\n")
		}
}}

