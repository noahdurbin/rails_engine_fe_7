require 'rails_helper'

RSpec.describe 'Items poro' do
  describe 'initialize' do
    it 'initializes with attributes' do
      item = Item.new({id: 1, attributes: {name: 'Item Name', description: 'Item Description', unit_price: 100.99, merchant_id: 1}})

      expect(item).to be_a(Item)
      expect(item.id).to eq(1)
      expect(item.name).to eq('Item Name')
      expect(item.description).to eq('Item Description')
      expect(item.unit_price).to eq(100.99)
    end
  end
end
