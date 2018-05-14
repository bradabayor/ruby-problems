puts "Hangman Initialized"

words = []

lines = File.readlines "lib/5desk.txt"
lines.each do |word|
  words << word
end

