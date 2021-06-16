require 'time'
require './lib/enigma'


file = File.open(ARGV[0], "r")

message = file.read


file.close

enigma = Enigma.new

encrypted_text = enigma.encrypt(message.chomp, ARGV[2], ARGV[3])

encrypted_message = File.open(ARGV[1], "w")
# require "pry"; binding.pry
encrypted_message.write(encrypted_text[:encryption])

encrypted_message.close

puts "Created '#{ARGV[1]}' with the key #{encrypted_text[:key]} and date #{encrypted_text[:date]}"
