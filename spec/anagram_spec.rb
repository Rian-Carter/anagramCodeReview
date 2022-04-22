require('rspec')
require('anagram')

describe ('Anagram_Checker') do
  it('checks to see if two words are anagrams') do
    red = Anagram_Checker.new('ailed', 'ideal')
    expect(red.anagram()).to(eq("Success! These words are anagrams!"))
  end

  it('should take in 2 words and check if case sensitivity affects anagram_checker') do
    blue = Anagram_Checker.new('Dog', 'God')
    expect(blue.anagram()).to(eq("Success! These words are anagrams!"))
  end

  it('should check to see if word1 contains vowel(s)') do
    yellow = Anagram_Checker.new('Brr', 'Try')
    expect(yellow.anagram()).to(eq("Please enter a real word."))
  end

  it('should check to see if there are no match letters and determine if antigram') do
    green = Anagram_Checker.new('analyze', 'word')
    expect(green.anagram()).to(eq("There are no matching letters. Looks like you have an antigram!"))
  end
end