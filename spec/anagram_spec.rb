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

  it('should check to see if word1 or word2 contains vowel(s)') do
    yellow = Anagram_Checker.new('Brr', 'Try')
    expect(yellow.anagram()).to(eq("Please enter a real word."))
  end

  it('should check to see if there are no matching letters and determine if antigram') do
    green = Anagram_Checker.new('analyze', 'word')
    expect(green.anagram()).to(eq("There are no matching letters. Looks like you have an antigram!"))
  end

  it('checks multiple words are anagrams') do
    purple = Anagram_Checker.new('The Morse Code', 'Here come dots')
    expect(purple.anagram()).to(eq("Success! These words are anagrams!"))
  end

  it('checks multiple words are antigrams') do
    black = Anagram_Checker.new('Tip Top', 'Adheres')
    expect(black.anagram()).to(eq("There are no matching letters. Looks like you have an antigram!"))
  end

  it('checks if user enters multiple words if they are actual words') do
    pink = Anagram_Checker.new('Grg Bsh', 'George Bush')
    expect(pink.anagram).to(eq("Please enter a real word"))
  end
end