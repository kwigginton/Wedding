class Reservation < ActiveRecord::Base
  attr_accessible :attendees, :email, :name
end
