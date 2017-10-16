namespace :admin do
  desc "Create an admin and send reset password email to new admin."
  task :create, [:first_name, :last_name, :email] => [:environment] do |t, args|
    CreateAdminJob.perform_later(
      email: args[:email],
      first_name: args[:first_name],
      last_name: args[:last_name]
    )
  end
end
