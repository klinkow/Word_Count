class String
  define_method(:word_count) do |master_word|
    counter = 0
    if .include("master_word") === true
      counter += 1
    end
    counter
  end
end
