class WelcomeController < ApplicationController
  skip_before_action :authorize
end
