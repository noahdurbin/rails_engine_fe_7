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
end
