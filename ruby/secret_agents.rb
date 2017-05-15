#create method to encrypt password
def encrypt (password)
#create a counter that breaks up strings and progresses letter to next value
#reassign that value to letters original position
	index = 0
	while index < password.length
		letter = password[index]
		letter.next!
		if letter == "aa"
			letter = "a"
		end
		password[index] = letter
		index += 1
		
	end
	secret = password
	puts "Your secret password is #{secret}"
end

#call up each letter in the word, using modified version of encrypt message
#create string a-z
#use index on alphabet string to locate letters positonal value
#take that number subrtact one and call up new letter (will address handling letter 'a' later)
#assign that as new value 
def decrypt (encrypt_password)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	while index < encrypt_password.length
		letter = encrypt_password[index]
		letter_position = alphabet.index(letter)
		letter_position -= 1
		letter = alphabet[letter_position]
		encrypt_password[index] = letter
		index += 1
	end
	reveal = encrypt_password
	puts "Your decrypted message is #{reveal}"
end
#if you run decrypt on an encrypt word first the encrypter will run and then the decrypter will run and since they are inverses we will be left with the original input

desire = 0

while (desire != "encrypt") && (desire != "decrypt")
  puts "Would you like to encrypt or decrypt this text? (encrypt/decrypt)"
    desire = gets.chomp
end

puts "What is the password you'd like to #{desire}?"
fbi_input = gets.chomp

if desire == "encrypt"
	encrypt(fbi_input)

elsif desire == "decrypt"
	decrypt(fbi_input)

end

puts "Thank you very much for using our encrypt-decrypt software. Goodbye"
