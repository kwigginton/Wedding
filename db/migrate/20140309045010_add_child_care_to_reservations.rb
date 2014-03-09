class AddChildCareToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :childcare, :boolean
  end
end
