require('pry')

class Anagram_Checker
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram
    array1 = @word1.downcase.split("")
    array2 = @word2.downcase.split("")
    
    # binding.pry
    if array1.any? { |array1|array2.include?(array1) } == true
    return "Success! These words are anagrams!"
  elsif
    "These are not anagrams"
  end
  end
end



