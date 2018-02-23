require 'rails_helper'

  describe 'user sees trip index page'  do
    it 'user clicks trip link and sees trails for that trip'  do
       trip = Trip.create(name: "Super fun")
       trail = trip.trails.create(length: 234, name: "big bend", address: "1234 Jacksonville, FL" )


       t.integer "length"
       t.string "name"
       t.string "address"
