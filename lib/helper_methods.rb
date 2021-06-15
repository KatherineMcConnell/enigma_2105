module HelperMethods

  def alphabet
    @alphabet = ("a".."z").to_a << " "
  end

  def key_generator
    @key_generator ||= Array.new(5){[0,1,2,3,4,5,6,7,8,9].sample}
  end
  #=> returns array of 5 random digit as integers in array


  def stringed_key
    @key_generator.join.to_s
  end
  #=> returns string of the key_generator

  def shift_key_assignments
      {
        A: @key_generator[0..1].join.to_i,
        B: @key_generator[1..2].join.to_i,
        C: @key_generator[2..3].join.to_i,
        D: @key_generator[3..4].join.to_i
      }
  end
  #=>

  def date
    @offset_generator ||= (Time.now.strftime("%m%d%y")
  end

  def offset_generator
    @offset_generator ||= (Time.now.strftime("%m%d%y").to_i**2).digits[-4..-1]
  end


  def assigned_shift_offsets

    #["1", "4", "2", "1"].map{|e|e.to_i}
      {
        A: @offset_generator[0],
        B: @offset_generator[1],
        C: @offset_generator[2],
        D: @offset_generator[3]
      }
  end

  def total_shifts_summed_keys_and_offsets(assign_shift_keys, assign_shift_offsets)

  end

  def shift_counter_queing_cycle
  end
end
