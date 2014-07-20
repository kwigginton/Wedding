class AddAttendingToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :attending, :boolean
    reversible do |dir|
      dir.up { Reservation.update_all attending: true }
    end
  end
end
