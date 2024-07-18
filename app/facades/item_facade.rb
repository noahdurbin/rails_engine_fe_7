class ItemFacade
  def initialize(service = ItemService.new)
    @service = service
  end

  def all_items
    response = @service.items
    data = JSON.parse(response.body, symbolize_names: true)
    items_array = data[:data]
    items_array.map do |item|
      Item.new(item)
    end
  end
end
