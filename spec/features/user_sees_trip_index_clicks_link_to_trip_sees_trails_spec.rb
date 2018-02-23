require 'rails_helper'

  describe 'user sees trip index page'  do
    it 'user clicks trip link and sees trails for that trip'  do
       trip = Trip.create(name: "Super fun")
       trail = trip.trails.create(length: 234, name: "big bend", address: "1234 Jacksonville, FL" )

       visit trips_path

      click_link("Super fun")

      expect(curent_path).to eq trip_path(trip)

      

     end
end
