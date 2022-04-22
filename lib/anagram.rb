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
    
    if array1.any? { |array1| array2.include?(array1) } === false
    return "There are no matching letters. Looks like you have an antigram!"
    elsif array1.all? { |array1| array2.include?(array1) } === true
    # binding.pry
    return "Success! These words are anagrams!"
    else array1.include?(vowels) === false || array2.include?(vowels) === false
    return "Please enter a real word."
    end
  end
end



