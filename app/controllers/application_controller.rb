class ApplicationController < ActionController::Base
  before_action :require_basic_auth_if_staging!
  protect_from_forgery with: :exception

  private
  
  def require_basic_auth_if_staging!
    if Rails.env.staging?
      http_basic_authenticate_with(
        name: ENV["BASIC_AUTH_USERNAME"],
        password: ENV["BASIC_AUTH_PASSWORD"]
      )
    end
  end
end
