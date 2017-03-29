class NrelService
  def self.data(zip_code)
    response = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1.json?limit=1&api_key=#{ENV['client_key']}")
    response2 = Faraday.get("http://www.afdc.energy.gov/locator/stations/results?utf8=%E2%9C%93&location=#{zip_code}&fuel=all&private=false&planned=false&owner=all&payment=all&radius=false&radius_miles=6&radius=true")
    byebug
    JSON.parse(response2.body)
  end
end
