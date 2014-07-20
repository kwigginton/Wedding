class AddAttendeeNamesToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :attendee_names, :text
  end
end
