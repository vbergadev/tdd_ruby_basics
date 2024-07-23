class Palindrome
  def is_palindrome?(word)
    word = word.downcase
    word == word.reverse
  end
end