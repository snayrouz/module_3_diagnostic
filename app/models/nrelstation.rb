class NrelStation
  def initialize()
    @zip = zip
  end

  def initialize
    @conn = Faraday.new("https://developer.nrel.gov")
  end
end
