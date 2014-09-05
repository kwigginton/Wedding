class FreedomHallController < ApplicationController
  skip_before_action :authorize
  before_action :require_passcode, only: :index
  
  def index
  end
  
  def verification_page
    redirect_to freedomhall_path if session[:verification]
  end
  
  def verify
    session[:verification] = true if params[:passcode].casecmp('Dance!') == 0
    if session[:verification]
      redirect_to freedomhall_path
    else
      require_passcode
    end
    
  end
  
  private
  
  def require_passcode
    unless session[:verification]
      redirect_to verify_url
    end
  end
end
