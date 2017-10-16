Rails.application.routes.draw do
  constraints subdomain: "app" do
    devise_for :trainers
    root "trainer_dashboards#show"
  end

  constraints subdomain: "admin" do
    devise_for :admins
    root "admin_dashboards#show"
  end

  unless Rails.env.production?
    require 'sidekiq/web'
    mount Sidekiq::Web => '/sidekiq'
  end
end
