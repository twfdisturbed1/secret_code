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