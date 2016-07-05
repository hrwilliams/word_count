class String
  define_method(:word_count) do |string_entered|
    word_entered = self.downcase()
    string_to_array = string_entered.downcase().split(" ")
    times_in_string = []
    string_to_array.each do |each_string_word|
      if word_entered == each_string_word
        times_in_string = times_in_string.push(each_string_word)
      end
    end
    result = times_in_string.length()
    result
  end
end
