class RegistryController < ApplicationController
  skip_before_action :authorize
  
  def index
    @donation_items = DonationItems.find_all
  end
end
