class ItemService
  def conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def items
    conn.get('/api/v1/items')
  end

  def item(id)
    conn.get("/api/v1/items/#{id}")
  end
end
