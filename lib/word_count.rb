class String
  define_method(:word_count) do |master_word|
    counter = 0
    capitalized_master_word = master_word.capitalize()
    lowercase_master_word = master_word.downcase()
    input_as_split_words = split(" ")
    input_as_split_words.each() do |word|
      if (word.to_s()).include?(master_word) === true
        counter += 1
      elsif (word.to_s()).include?(capitalized_master_word) === true
        counter += 1
      elsif (word.to_s()).include?(lowercase_master_word) === true
        counter += 1
      end
    end
    counter
  end
end
