require 'rails_helper'

RSpec.describe 'Merchant Poro' do
  describe 'initialize' do
    it 'initializes with a name and id' do
      merchant1 = Merchant.new({id: 1, attributes: {name: 'Merchant Name'}})

      expect(merchant1).to be_a(Merchant)
      expect(merchant1.name).to eq('Merchant Name')
      expect(merchant1.id).to eq(1)
    end
  end
end
