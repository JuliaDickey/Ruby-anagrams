require('pry')

class String
  define_method(:anagrams) do |phrase|
# RETURNS AN ARRAY OF LETTERS
    select_word = self.split("").sort()

    anagrams = []
# RETURNS AN ARRAY OF WORDS
    phrase_array = phrase.split(", ")
# FOR EACH WORD IN ARRAY OF WORDS
    phrase_array.each do |word|
      if select_word == (word.split("")).sort()
        anagrams.push(word)
      end
    end
    anagrams.join(", ")
  end
end
