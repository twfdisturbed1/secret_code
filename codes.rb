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
	atoz = ("a".."z").to_a
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
