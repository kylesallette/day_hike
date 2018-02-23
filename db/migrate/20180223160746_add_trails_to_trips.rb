class AddTrailsToTrips < ActiveRecord::Migration[5.1]
  def change
    add_reference :trips, :trail, foreign_key: true
  end
end
