require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  context 'Interaction Pattern' do
    before(:each) do
      enigma = Enigma.new
    end

    it 'exists' do

      expect(enigma).to be_an_instance_of(Enigma)
    end

    it 'can encrypt a message with a key and a date' do

      result = {encryption: "keder ohulw",
                key: "02715",
                date: "040895"
              }
      expect(enigma.encrypt("hello world", "02715", "040895")).to eq(result)
    end

    it 'can decrypt a message with a key and a date' do

      result = { decrypttion: "hello world",
                key: "02715",
                date:"040895"
              }
      expect(enigma.decrypt("keder ohulw","027715","040895")).to eq(result)
    end

    context 'Student written tests' do
      before(each) do

      end

      it 'can generate a key with leading zeroes' do

        expect().to eq()
      end

      it 'can appropriately assign shift key randomly generated numbers indices' do

        expect().to eq()
      end

      it 'can properly tranforms date into offsets with appropriately assigned indices ' do

        expect().to eq()
      end

      it 'encryption shifting returning as expected' do

        expect().to eq()
      end

      it 'will always restart the shift cycle at the 5th character' do

        expect().to eq()
      end

      it 'accepts and returns upcased letters lowercased' do

        expect().to eq()
      end

      it 'returns foreign characters as itself' do

        expect().to eq()
      end

      it 'can retrieve decryption key' do

        expect().to eq()
      end

      it 'can retrieve decryption date' do

        expect().to eq()
      end

      it 'decryption is returning as expected' do

        expect().to eq()
      end

    end
  end
end
