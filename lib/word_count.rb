class String
  define_method(:word_count) do |master_word|
    counter = 0
    input_as_word_array = self.split(" ")
    input_as_word_array.each() do |word|
      if word.include("master_word") === true
        counter += 1
      end
    end
    counter
  end
end
