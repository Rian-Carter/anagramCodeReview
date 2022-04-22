require('rspec')
require('anagram')

describe ('Anagram_Checker') do
  it('checks to see if two words are anagrams') do
    red = Anagram_Checker.new('ailed', 'ideal')
    expect(red.anagram()).to(eq("Success! These words are anagrams!"))
  end
end