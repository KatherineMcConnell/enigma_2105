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

    it 'encrypt' do

      result = {encryption: "keder ohulw",
                key: "02715",
                date: "040895"
              }
      expect(enigma.encrypt("hello world", "02715", "040895")).to eq(result)
    end

    it 'decrypt' do

      result = { decrypttion: "hello world",
                key: "02715",
                date:"040895"
              }
      expect(enigma.decrypt("keder ohulw","027715","040895")).to eq(result)
    end
  end
end
