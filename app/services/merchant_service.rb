class MerchantService
  def conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def merchants
    conn.get('/api/v1/merchants')
  end
end
