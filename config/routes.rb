Rails.application.routes.draw do
  resources :city_temperatures do
    collection do
      get "lowest"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
