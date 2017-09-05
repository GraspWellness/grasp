class ApplicationController < ActionController::Base
  if Rails.env.staging?
    http_basic_authenticate_with(
      name: ENV["BASIC_AUTH_USERNAME"],
      password: ENV["BASIC_AUTH_PASSWORD"]
    )
  end

  protect_from_forgery with: :exception
end
