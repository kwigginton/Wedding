class CreateGuestbookposts < ActiveRecord::Migration
  def change
    create_table :guestbookposts do |t|
      t.string :name
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
