class NrelService
  def self.data(zip_code)
    response = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?limit=1&api_key=#{ENV['client_key']}&location=80203&radius=6.0")
    results = JSON.parse(response.body)
    results
  end
end
