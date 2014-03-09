class AddRoomAccomodationsToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :roomaccomodation, :boolean
  end
end
