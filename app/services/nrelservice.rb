class NrelService
  def initialize()
    @zip = zip
  end

  def initialize
    @conn = Faraday.new("https://developer.nrel.gov")
  end

  def find_stations(filter)
    url = "/api/alt-fuel-stations/v1/nearest.json"
    response = @conn.get(url, default_params.merge(filter))
     raw_stations = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
  end

  def default_params
    {
      api_key: ENV["nrel_api_key"],
      limit: 10,
      radius: "6.0",
      stations: "ELEC, LPG"
    }
  end

  def self.find_stations(filter)
    new.find_stations(filter)
  end

end
