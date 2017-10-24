Rails.application.routes.draw do
  constraints subdomain: "app" do
    root "welcome#index"
    get "hello_world", to: "hello_world#index"
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
