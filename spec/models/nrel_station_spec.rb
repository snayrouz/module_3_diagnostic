require 'rails_helper'

describe NrelStation do
  it "successfully initializes w/ valid attributes" do
    valid_attrs = {
      :station_name=>"Sam's Gas Station",
      :street_address=>"123 Easy Street",
      :fuel_type_code=>"ELEC",
      :distance=> 0.12345,
      :access_days_time=>"4am - 12am"
    }

    station = NrelStation.new(valid_attrs)

    expect(station.name).to eq("Sam's Gas Station")
    expect(station.address).to eq("123 Easy Street")
    expect(station.fuel_type).to eq("ELEC")
    expect(station.distance).to eq(0.12345)
    expect(station.access_times).to eq("4am - 12am")
  end
end
