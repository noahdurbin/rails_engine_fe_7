require 'rails_helper'

RSpec.describe 'Merchant Service' do
  describe 'should retrieve a list of merchants when requested' do
    it 'should return a list of merchants', :vcr do
      response = MerchantService.new.merchants
      json = JSON.parse(response.body, symbolize_names: true)

      expect(json[:data]).to be_a Array
      expect(json[:data]).to all(be_a Hash)
    end
  end

  describe 'should retrieve a single merchant when requested' do
    it 'can get a specific merchant details by id', :vcr do
      response = MerchantService.new.merchant(1)

      json = JSON.parse(response.body, symbolize_names: true)

      expect(json[:data]).to be_a Hash
      expect(json[:data]).to have_key(:id)
      expect(json[:data][:id]).to be_a String
      expect(json[:data][:attributes]).to have_key(:name)
      expect(json[:data][:attributes][:name]).to be_a String

      merchant1 = Merchant.new(json[:data])
      expect(merchant1).to be_a Merchant
    end
  end

  describe 'should retrieve a list of items for a specific merchant when requested' do
    it 'can get a list of items for a specific merchant', :vcr do
      response = MerchantService.new.merchant_items(1)

      json = JSON.parse(response.body, symbolize_names: true)

      expect(json[:data]).to be_a Array
      expect(json[:data]).to all(be_a Hash)
    end
  end
end
