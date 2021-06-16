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
    @offset = (@date.to_i**2).digits[-4..-1]
  end

  def stringed_key
    @key.join.to_s
  end

# *********************************************************
#Key & Offset Hash Construction, Final Shift Totals


  def final_shift_totals
    key_values = []
    @keys.each_cons(2) {|key| key_values << key.join.to_i}
    paired_shifts = @offset.zip(key_values)
    shifts_arr = paired_shifts.flat_map {|elem| elem.sum}
    final_shift_keys = [:A,:B,:C,:D]#0,1,2,3
    final_shifts = final_shift_keys.zip(shifts_array).to_h
  end

# *****************************************************************
#Character_shifter_with_counter

  def character_shifter_with_counter
    #Alpha = ("a".."z").to_a << " "
    #msg_arr = message.downcase.chars
    #encrypter_msg = []
    #counter = msg_arr.each_with_index do |letter, index|
    #           if index % 4 == 0
    # =>            cipher_key = Hash[alphabet.zip(alphabet.rotate(final_shift_totals.values[0]))]
    # =>            create a hash[letter] = final_shift_totals.values[0]
    # =>            encryted_msg << msg_arr.inject(""){|newtext, char| newtext + key[char]}
    # =>        elsif index % 4 == 1
    # =>            cipher_key = Hash[alphabet.zip(alphabet.rotate(final_shift_totals.values[0]))]
    # =>            create a hash[letter] = final_shift_totals.values[1]
    # =>            encryted_msg << msg_arr.inject(""){|newtext, char| newtext + key[char]}
    # =>        elsif index % 4 == 2
    #               cipher_key = Hash[alphabet.zip(alphabet.rotate(final_shift_totals.values[0]))]
    # =>            create a hash[letter] = final_shift_totals.values[2]
    # =>            encryted_msg << msg_arr.inject(""){|newtext, char| newtext + key[char]}
    # =>        elsif index % 4 == 3
    # =>            cipher_key = Hash[alphabet.zip(alphabet.rotate(final_shift_totals.values[0]))]
    # =>            create a hash[letter] = final_shift_totals.values[3]
    # =>            encryted_msg << msg_arr.inject(""){|newtext, char| newtext + key[char]}
    # =>        end
    # =>      end
    # =>     encrypted_msg

    #  shifter_hash = Hash[Alpha.zip(Alpha.rotate(shift))]
        #msg[index] ==
    # fetch or fetch_values takes hash to array
     string.chars.map { |c| encrypter.fetch(c, c) }
  end

  def reverse_character_shifter_with_counter
    #invert?? #.merge on hashes
  end


end
