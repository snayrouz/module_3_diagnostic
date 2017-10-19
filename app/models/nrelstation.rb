class NrelStation
  def initialize(attrs = {})
    @attrs = attrs
    @name = attrs[:station_name]
    @address = attrs[:street_address]
    @fuel_type = attrs[:fuel_type_code]
    @distance = attrs[:distance]
    @access_times = attrs[:access_days_time]
  end

  def self.search(search_filter)
    raw_filter = {location: search_filter[:zip]}
    raw_stations = NrelService.find_stations(raw_filter)

    raw_stations.map do |raw_station|
      NrelStation.new(raw_station)
    end
  end

  private
    attr_reader :name, :address, :fuel_type, :distance, :access_times

end
