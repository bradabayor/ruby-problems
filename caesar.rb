# Caesar's Cipher

puts "Enter a string:"
str = gets

puts "Enter a shift:"
num = gets.to_i

arr = []

str.each_char do |i|
	case true
	when i.ord >= 65 && i.ord <= 90 # Uppercase
		new_ord = (str[i].ord + num).to_i
		if new_ord > 90
			new_ord = 65 + (new_ord - 90)
		end
	when i.ord >= 97 && i.ord <= 122 # Lowercase
		new_ord = (str[i].ord + num).to_i
		if new_ord > 122
			new_ord = 97 + (new_ord - 97)
		end
	else # Special Character
		new_ord = str[i].ord
	end
	print new_ord.chr
end
