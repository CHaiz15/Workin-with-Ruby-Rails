Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "/customers", to: "customers#index"
    end
  end
end
