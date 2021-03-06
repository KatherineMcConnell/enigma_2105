require 'time'
require './lib/enigma'

enigma = Enigma.new

# require "pry"; binding.pry

encrypted_text = File.open(ARGV[0],"r")

encrypted_message = encrypted_text.read

encrypted_text.close

decrypted_text = enigma.decrypt(encrypted_message.chomp, ARGV[2], ARGV[3])

decrypted_message = File.open(ARGV[1], "w")

# require "pry"; binding.pry
# File.write(ARGV[1], decrypted_text[:decryption], mode: "a")

decrypted_message.write(decrypted_text[:decryption])

decrypted_message.close

puts "Created '#{ARGV[1]}' with the key #{decrypted_text[:key]} and date #{decrypted_text[:date]}"
