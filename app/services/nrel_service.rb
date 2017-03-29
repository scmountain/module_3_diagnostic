class NrelService
  def self.data(zip_code)
    response = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1.json?limit=1&api_key=#{ENV[client_key]}")
    byebug
    JSON.parse(response.body)
  end
end
