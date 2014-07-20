class RemoveAccomodationsFromReservation < ActiveRecord::Migration
  def change
    remove_column :reservations, :roomaccomodation
  end
end
