file = File.open(ARGV[0..4],"r")

encrypted = file.read

file.close

dycrypted.txt = encrypted.dycrypt

writer = File.open(ARGV[1], "w")

writer.writer(decrypted.txt)

writer.close

puts "Created 'decrypted.txt' with the key #{ARGV[3]} and date #{ARGV[4]}"
