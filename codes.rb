def string_return(message)
 ""
end
def ready_text(message)
    message.downcase.gsub(/[^a-z0-9]/i, '')
end
def text_to_char(message)
    ready_text(message).split("")
end
def atoz()
	atoz = [*?a..?z]
    
end
def ftoe()
	atoz.rotate(5)
end
def indexed_message(message)
	indexed_message_arr = []
	text_to_char(message).each do |letters|
		counter = 0
		atoz.each do |letters_1|
			if letters == letters_1
				indexed_message_arr << counter
			end
			counter += 1
		end
	end
	indexed_message_arr 
end
def encrypter(message) #rotated alphabet by 5 places
	encrypted_arr = []
	indexed_message(message).each do |number|
		if number == ftoe.index
			ftoe[number]
		end
	encrypted_arr << ftoe[number]
	end
	encrypted_arr.join
end
def indexed_encrypted_message(message) #for decryption
	indexed_decrypted_msg_arr = []
	text_to_char(message).each do |letters|
		counter = 0
		ftoe.each do |letters_1|
			if letters == letters_1
				indexed_decrypted_msg_arr << counter
			end
			counter += 1
		end
	end
	indexed_decrypted_msg_arr
end
def decrypter(message) #rotates back 5 places to original alphabet
	decrypted_arr = []
	indexed_encrypted_message(message).each do |number|
		if number == atoz.index
			atoz[number]
		end
	decrypted_arr << atoz[number]
	end
	decrypted_arr.join
end

puts decrypter("htiji")
puts encrypter("Coded")


