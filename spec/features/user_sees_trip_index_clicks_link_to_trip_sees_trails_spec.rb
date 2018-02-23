require 'rails_helper'

  describe 'user sees trip index page'  do
    it 'user sees all trips'  do
       trip = Trip.create(name: "Super fun")
       trail = trip.trails.create(length: 234, name: "big bend", address: "1234 Jacksonville, FL" )

       visit trips_path



      expect(page).to have_content("Super fun")

  end
end


 describe 'user sees trip index page'  do
   it 'user clicks trip link and sees trails for that trip'  do
     trip = Trip.create(name: "Super fun")
     trail = trip.trails.create(length: 234, name: "big bend", address: "1234 Jacksonville, FL" )

     visit trips_path

    click_link("Super fun")

    expect(current_path).to eq trip_path(trip)
    expect(page).to have_content("big bend")
    
  end
end
