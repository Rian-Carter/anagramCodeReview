require('pry')

class Anagram_Checker
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram
    array1 = @word1.downcase.split("")
    array2 = @word2.downcase.split("")
    vowels = ['a','e','i','o','u','y']
    
    if array1.all? { |array1| array2.include?(array1) } === true
    return "Success! These words are anagrams!"
    elsif array1.include?(vowels) === false || array2.indlude?(vowels) === false
      return "Please enter a real word."
      binding.pry
    else
      "Looks like you have an antigram"
    end
  end
end



