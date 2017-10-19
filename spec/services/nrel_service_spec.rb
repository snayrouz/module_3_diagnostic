require 'rails_helper'
	describe NrelService do
	  context "class methods" do
	    context ".find_stations" do
	      it "filters stations by a valid zip" do
	        filter = { zip: "80203" }
	        raw_stations = NrelService.find_stations(filter)
	        raw_station = raw_stations.first

	        expect(raw_stations.count).to eq(10)

	        expect(raw_station).to have_key(:station_name)
	        expect(raw_station[:station_name]).to be_a String

          expect(raw_station).to have_key(:station_address)
	        expect(raw_station[:station_address]).to be_a String

	        expect(raw_station).to have_key(:fuel_type_code)
	        expect(raw_station[:fuel_type_code]).to be_a String

	        expect(raw_station).to have_key(:distance)
	        expect(raw_station[:distance]).to be_a Float

	        expect(raw_station).to have_key(:access_days_time)
	        expect(raw_station[:access_days_time]).to be_a String
	      end
	    end
	  end
	end
