class CreateAdminService
  class << self
    def run(email:, first_name:, last_name:)
      admin = Admin.new(
        email: email,
        first_name: first_name,
        last_name: last_name
      )
      admin.password = Devise.friendly_token(50)
      admin.save!
      reset_password_token = admin.send(:set_reset_password_token)
      AdminMailer.welcome(admin, reset_password_token).deliver_now
    end
  end
end
