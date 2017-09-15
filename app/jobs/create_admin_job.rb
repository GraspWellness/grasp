class CreateAdminJob < ApplicationJob
  def perform(email:, first_name:, last_name:)
    CreateAdminService.run(
      email: email,
      first_name: first_name,
      last_name: last_name
    )
  end
end
