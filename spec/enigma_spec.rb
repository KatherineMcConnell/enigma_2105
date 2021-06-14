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

    # it 'has attributes' do
    #
    #   expect().to eq()
    # end
  end
end
