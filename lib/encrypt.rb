file = File.open(ARGV[0], "r")

message = file.read

file.close

encrypted.txt = message.encrypt

writer = File.open(ARGV[1], "w")

writer.writer(encrypted.txt)

writer.close

puts "Created 'encrypted.txt' with the key #{} and date #{}"
