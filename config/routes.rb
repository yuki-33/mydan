Rails.application.routes.draw do

  root to: 'home#index'

  resources :home do
    post 'inquiry' => 'home#inquiry', on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
