def substrings(text, dictionary)
  text = gets.chomp
  dictionary = gets.chomp.split(" ")
  subs_array = Hash.new(0)
  text.each do |word|
    dictionary.each do |match|
      if word.include? match
        subs_array[match] += 1
      end
    end
  end
  puts subs_array
end