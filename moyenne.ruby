#!/usr/bin/ruby -w
# -*- coding: utf-8 -*-

tab=[]

10.times { tab << gets.strip..to_f}
tab.sort.each{ |i| puts i} #ou simplement tab.sort
s = tab.inject(0) { |somme, i| somme+1 } 
puts "la
