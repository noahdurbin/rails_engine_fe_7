class MerchantFacade
  def initialize(service = MerchantService.new)
    @service = service
  end

  def merchants
    response = @service.merchants
    data = JSON.parse(response.body, symbolize_names: true)
    merchants_array = data[:data]
    merchants = merchants_array.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def merchant(id)
    response = @service.merchant(id)
    data = JSON.parse(response.body, symbolize_names: true)
    merchant = Merchant.new(data[:data])
  end

  def merchant_items(id)
    response = @service.merchant_items(id)
    data = JSON.parse(response.body, symbolize_names: true)
    items_array = data[:data]
    items = items_array.map do |item|
      Item.new(item)
    end
  end
end
