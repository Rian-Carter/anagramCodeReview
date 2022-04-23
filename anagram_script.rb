#!/usr/bin/env ruby
require('./lib/anagram.rb')

puts "---Hello---"
puts "-Welcome to Anagram Checker-"
puts "-I will also determine if words are palindromes-"
puts "Please enter two words to check if they are or are not anagrams."
word1 = gets.chomp
word2 = gets.chomp
test1 = Anagram_Checker.new(word1, word2)
puts "You entered #{word1} and #{word2}: #{test1.anagram} and #{test1.palindrome}"