require('pry')

class Anagram_Checker
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram
    array1 = @word1.split("")
    array2 = @word2.split("")
binding.pry
    array1.include?(array2)
    return "Success! These words are anagrams!"
  end
end