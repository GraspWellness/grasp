Rails.application.routes.draw do
  devise_for :admins
  devise_for :trainers
  root "trainer_dashboards#show"
end
