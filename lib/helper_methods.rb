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
    shifts_array = paired_shifts.flat_map {|elem| elem.sum}
    final_shift_keys = [:A,:B,:C,:D]
    final_shifts = final_shift_keys.zip(shifts_array).to_h
  end

# *****************************************************************
#Message argument

#message.chars (array out charactors for iteration)
  def shift_counter_queing_cycle
  end

  def alphabet
    @alphabet = ("a".."z").to_a << " "
  end



end
