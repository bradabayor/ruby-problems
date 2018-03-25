def caesar_chiper(str, shift)
	str.each_char do |i|
		case true
		when i.ord >= 65 && i.ord <= 90 # Uppercase
			new_ord = (str[i].ord + shift).to_i
			print new_ord > 90 ? (65 + (new_ord - 90)).chr : new_ord.chr
		when i.ord >= 97 && i.ord <= 122 # Lowercase
			new_ord = (str[i].ord + shift).to_i
			print new_ord > 122 ? (97 + (new_ord - 97)).chr : new_ord.chr
		else
			print str[i]
		end
	end
end
