require "pry"

def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz".split("")
  arr.sort do |phrase_a, phrase_b|
    phrase_a_sorted = phrase_a.delete(" ")
    phrase_b_sorted= phrase_b.delete(" ")
    a_array = phrase_a_sorted.split("").collect {|char| alphabet.index(char)}
    b_array = phrase_b_sorted.split("").collect {|char| alphabet.index(char)}
    a_array <=> b_array
  end
end
