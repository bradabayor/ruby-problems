# Caesar's Cipher

puts "Enter a string:"
str = gets

puts "Enter a shift:"
num = gets.to_i

str.each_char do |i|
	case true
	when i.ord >= 65 && i.ord <= 90 # Uppercase
		new_ord = (str[i].ord + num).to_i
		print new_ord > 90 ? (65 + (new_ord - 90)).chr : new_ord.chr
	when i.ord >= 97 && i.ord <= 122 # Lowercase
		new_ord = (str[i].ord + num).to_i
		print new_ord > 122 ? (97 + (new_ord - 97)).chr : new_ord.chr
	else # Special Character
		print str[i]
	end
end
