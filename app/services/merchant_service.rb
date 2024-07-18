class MerchantService
  def conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def merchants
    conn.get('/api/v1/merchants')
  end

  def merchant(id)
    conn.get("/api/v1/merchants/#{id}")
  end

  def merchant_items(id)
    conn.get("/api/v1/merchants/#{id}/items")
  end
end
