require('rspec')
require('anagram')

describe ('Anagram_Checker') do
  it('checks to see if two words are anagrams') do
    red = Anagram_Checker.new('ailed', 'ideal')
    expect(red.anagram()).to(eq("Success! These words are anagrams!"))
  end
  it('should take in 2 words and check is case sensitivity affects anagram_checker') do
    blue = Anagram_Checker.new('Dog', 'God')
    expect(blue.anagram()).to(eq("Success! These words are anagrams!"))
  end
end