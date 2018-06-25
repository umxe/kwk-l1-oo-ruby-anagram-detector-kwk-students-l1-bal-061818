# Your code goes here!
class Anagram
  arrE = []
  def initialize(word)
    @word = word
  end
  
  def match(words)
  anagram_groups = []
  words.each do |word|

    word_added = false

    anagram_groups.each do |group|
      if group.include? word
        word_added = true
      elsif word.downcase.chars.sort == group[0].downcase.chars.sort
        group << word
        word_added = true        
      end
    end

    unless word_added
      anagram_groups << [word]
      word_added = true
    end

  end
  return anagram_groups
end
end

listen = Anagram.new("listen")
listen.match(%w(enlists google inlets banana))