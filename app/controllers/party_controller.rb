class PartyController < ApplicationController
  skip_before_action :authorize
end
