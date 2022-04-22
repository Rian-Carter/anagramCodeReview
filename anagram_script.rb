#!/usr/bin/env ruby
require('./lib/anagram.rb')

puts "Please enter two words to check if they are or are not anagrams."
word1 = gets.chomp
word2 = gets.chomp
test1 = Anagram_Checker.new(word1, word2)
puts "You entered #{word1} and #{word2}: #{test1.anagram}"