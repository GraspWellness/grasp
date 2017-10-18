class AdminMailer < ApplicationMailer
  include Devise::Controllers::UrlHelpers

  def welcome(admin, reset_password_token)
    @reset_password_url = edit_admin_password_url(reset_password_token: reset_password_token)
    @admin = admin
    mail(
      to: @admin.email,
      from: "admin@#{ActionMailer::Base.default_url_options[:host]}",
      subject: "Welcome to Grasp Admin Portal!"
    )
  end
end
