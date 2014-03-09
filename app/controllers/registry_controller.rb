class RegistryController < ApplicationController
  skip_before_action :authorize
end
