require 'time'
# require '/lib/enigma'

module HelperMethods
  #Responsibilities:

# ********************************************************
#Key, Date, & Offset Generators

  def key_generator
    if @key.nil?
      Array.new(5){[0,1,2,3,4,5,6,7,8,9].sample}
    else
      @key.split(//).map{|e|e.to_i}
    end
  end

  def stringed_date_generator
    @date ||= (Time.now.strftime("%m%d%y"))
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
    alpha = ("a".."z").to_a << " "
    msg_arr = @message.downcase.chars
    encrypted_msg = []
    counter = msg_arr.each_with_index do |letter, index|
      if index % 4 == 0
        cipher_key = Hash[alpha.zip(alpha.rotate(final_shift_totals.values[0]))]
        encrypted_msg << cipher_key[letter]
      elsif index % 4 == 1
        cipher_key = Hash[alpha.zip(alpha.rotate(final_shift_totals.values[1]))]
        encrypted_msg << cipher_key[letter]
      elsif index % 4 == 2
        cipher_key = Hash[alpha.zip(alpha.rotate(final_shift_totals.values[2]))]
        encrypted_msg << cipher_key[letter]
      elsif index % 4 == 3
        cipher_key = Hash[alpha.zip(alpha.rotate(final_shift_totals.values[03]))]
        encrypted_msg << cipher_key[letter]
      end
    end
    encrypted_msg
    # require "pry"; binding.pry
  end
end

    #  shifter_hash = Hash[Alpha.zip(Alpha.rotate(shift))]
        #msg[index] ==
    # fetch or fetch_values takes hash to array
#      string.chars.map { |c| encrypter.fetch(c, c) }
#   end
#
#   def reverse_character_shifter_with_counter
#     #invert?? #.merge on hashes
#   end
#
#
# end
