class String
  define_method(:word_count) do |string_entered|
    word_entered = self.downcase()
    string_to_array = string_entered.downcase().split().sort()
    count = 0
    string_to_array.each() do |string_word|
      if string_word == word_entered
        count += 1
      end
    end
    return count
  end
end
