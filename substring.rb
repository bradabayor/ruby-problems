dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

subs_array = Hash.new(0)

text = "Howdy partner, sit down! How's it going?"
text = text.downcase.split(" ")
  
text.each do |word|
  dictionary.each do |match|
    if word.include? match
      subs_array[match] += 1
    end
  end
end

puts subs_array