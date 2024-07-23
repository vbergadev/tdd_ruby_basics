require_relative 'palindrome'
RSpec.describe Palindrome do
  it "should return true for 'racecar'" do
    word = 'racecar'
    palindrome = Palindrome.new
    expect(palindrome.is_palindrome?(word)).to be_truthy
  end
  it "should return false for 'hello'" do
    word = 'hello'
    palindrome = Palindrome.new
    expect(palindrome.is_palindrome?(word)).to be_falsey
  end
end