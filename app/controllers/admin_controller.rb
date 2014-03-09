class AdminController < ApplicationController
  def index
    @total_reservations = Reservation.count
    @total_posts = Guestbookpost.count
  end
end
