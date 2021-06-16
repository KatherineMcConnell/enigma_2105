require 'time'
# require '/lib/enigma'

module HelperMethods
  #Responsibilities:

# ********************************************************
#Key, Date, & Offset Generators

  def key_generator(key)
    if key.nil?
      Array.new(5){[0,1,2,3,4,5,6,7,8,9].sample}
    else
      key.split(//).map{|e|e.to_i}
    end
  end

  def stringed_date_generator
    @date ||= (Time.now.strftime("%d%m%y"))
  end

  def offset_generator
    @offset = (@date.to_i**2).to_s.split(//).map{|char| char.to_i}[-4..-1]
  end

  def stringed_key
    @key.join.to_s
  end

# *********************************************************
#Key & Offset Hash Construction, Final Shift Totals


  def final_shift_totals
    key_values = []
    @key.each_cons(2) {|key| key_values << key.join.to_i}
    paired_shifts = offset_generator.zip(key_values)
    # require "pry"; binding.pry
    shifts_arr = paired_shifts.flat_map {|elem| elem.sum}
    final_shift_keys = [:A,:B,:C,:D]#0,1,2,3
    final_shifts = final_shift_keys.zip(shifts_arr).to_h
    # require "pry"; binding.pry
  end

# *****************************************************************
#Character_shifter_with_counter

  def character_shifter_with_counter
    a = ("a".."z").to_a << " "
    msg_arr = @message.downcase.chars
    # require "pry"; binding.pry
    encrypted_msg = []
    counter = msg_arr.each_with_index do |char, index|
      if a.include?(char) == false
        encrypted_msg << char
        elsif index % 4 == 0
          cipher_key = Hash[a.zip(a.rotate(final_shift_totals.values[0]))]
          encrypted_msg << cipher_key[char]
        elsif index % 4 == 1
          cipher_key = Hash[a.zip(a.rotate(final_shift_totals.values[1]))]
          encrypted_msg << cipher_key[char]
        elsif index % 4 == 2
          cipher_key = Hash[a.zip(a.rotate(final_shift_totals.values[2]))]
          encrypted_msg << cipher_key[char]
        elsif index % 4 == 3
          cipher_key = Hash[a.zip(a.rotate(final_shift_totals.values[03]))]
          encrypted_msg << cipher_key[char]
      end
    end
    # require "pry"; binding.pry
    encrypted_msg.join
  end

  def reverse_character_shifter_with_counter
    # ciphertext_arr = @ciphertext.chars
    # given key & date so can easily calc final_shift_totals
    # final_shift_totals(@key, offset_generator)
    #
    #
    #
    #
    #
    #
    #
    #
    #
    a = ("a".."z").to_a << " "
    ciphertext_arr = @ciphertext.chomp.split("")
    # require "pry"; binding.pry
    encrypted_msg = []
    counter = ciphertext_arr.each_with_index do |char, index|
      if a.include?(char) == false
        encrypted_msg << char
        elsif index % 4 == 0
          cipher_key = Hash[a.zip(a.rotate(final_shift_totals.values[0]))].invert
          # require "pry"; binding.pry
          encrypted_msg << cipher_key[char]
        elsif index % 4 == 1
          cipher_key = Hash[a.zip(a.rotate(final_shift_totals.values[1]))].invert
          encrypted_msg << cipher_key[char]
        elsif index % 4 == 2
          cipher_key = Hash[a.zip(a.rotate(final_shift_totals.values[2]))].invert
          encrypted_msg << cipher_key[char]
        elsif index % 4 == 3
          cipher_key = Hash[a.zip(a.rotate(final_shift_totals.values[03]))].invert
          encrypted_msg << cipher_key[char]
      end
    end
    encrypted_msg.join
    # require "pry"; binding.pry
    # require "pry"; binding.pry
  end
  #invert?? #.merge on hashes
  #  shifter_hash = Hash[Alpha.zip(Alpha.rotate(shift))]
  #msg[index] ==
  # fetch or fetch_values takes hash to array
  #      string.chars.map { |c| encrypter.fetch(c, c) }
  #   end



end
