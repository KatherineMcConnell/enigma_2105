require 'spec_helper'
require_relative '../lib/enigma'

RSpec.describe Enigma do

  describe 'Interaction Pattern: EncryptTests' do
    before(:each) do
      @enigma = Enigma.new
    end

    it 'exists' do
      @enigma.encrypt("message")
      expect(@enigma).to be_an_instance_of(Enigma)
    end

  end
end

  #   it 'can encrypt with only 1 argument, a message, and return hash' do
  #
  #     expect().to eq()
  #   end
  #
  #   it 'can encrypt with 2 arguements, a message and key, and return hash' do
  #     #mock & stub todays date
  #     encrypted = enigma.encrypt("hello world", "02715")
  #
  #     expect(encrypted).to eq(####)
  #   end
  #
  #   it 'can encrypt with 2 arguments, a message and date, and return hash' do
  #     ### generates random key and uses todays date
  #     ### mock & stub todays date
  #
  #     expect(enigma.encrypt("hello world")).to eq()
  #   end
  #
  #   it 'can encrypt with 3 arguments, a message, key, and date, and return hash' do
  #
  #     expected = {encryption: "keder ohulw",
  #               key: "02715",
  #               date: "040895"
  #             }
  #
  #     expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  #   end
  # end
  #
  #
  # Describe'Interaction Pattern: DecryptionTests' do
  #   before(:each) do
  #     enigma = Enigma.new
  #   end
  #
  #   it 'can decrypt with 2 arguments, a ciphertext and key, and return hash' do
  #     #mock & stub todays date
  #
  #     expect(enigma.decrypt(encrypted[:encryption], "02715")).to eq(###)
  #   end
  #
  #   it 'can decrypt with 3 arguments, a ciphertext, key, and date, and return hash' do
  #
  #     expected = { decryption: "hello world",
  #               key: "02715",
  #               date:"040895"
  #             }
  #
  #     expect(enigma.decrypt("keder ohulw","027715","040895")).to eq(expected)
  #   end

    # it 'can encrypt a message with a key and TODAYS date' do
    #   return = #
    #
    #   expect().to eq()
    # end
    #
    # context 'Student written tests' do
    #   before(each) do
    #
    #   end
    #
    #   it 'can generate a key with leading zeroes' do
    #
    #     expect().to eq()
    #   end
    # #
    #   it 'can appropriately assign shift key randomly generated numbers indices' do
    #
    #     expect().to eq()
    #   end
    #
    #   it 'can properly tranforms date into offsets with appropriately assigned indices ' do
    #
    #     expect().to eq()
    #   end
    #
    #   it 'encryption shifting returning as expected' do
    #
    #     expect().to eq()
    #   end
    #
    #   it 'will always restart the shift cycle at the 5th character' do
    #
    #     expect().to eq()
    #   end
    #
    #   it 'accepts and returns upcased letters lowercased' do
    #
    #     expect().to eq()
    #   end
    #
    #   it 'returns foreign characters as itself' do
    #
    #     expect().to eq()
    #   end
    #
    #   it 'can retrieve decryption key' do
    #
    #     expect().to eq()
    #   end
    #
    #   it 'can retrieve decryption date' do
    #
    #     expect().to eq()
    #   end
    #
    #   it 'decryption is returning as expected' do
    #
    #     expect().to eq()
    #   end

  #   end
  # end
# end
