class Enigma
  def initialize
  end

  def key_generator
    Array.new(5){[0,1,2,3,4,5,6,7,8,9].sample}
  end


  def stringed_key(key_generator)
    key_generator.join.to_s
  end

  def assign_shift_keys(key_generator)
    require "pry"; binding.pry
    the_keys = {
                A: key_generator[0][1],
                B: key_generator[1][2],
                C: key_generator[2][3],
                D: key_generator[3][4]
              }
  end

  def offset_generator
    Array.new = (Time.now.strftime("%m%d%y") * 2).to_a[-3]



  def encrypt(message, key, date)
  end

  def decrypt(ciphertext, key, date)
  end

end
