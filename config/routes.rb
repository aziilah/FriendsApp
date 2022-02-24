Rails.application.routes.draw do
  resources :friends 
    

  devise_for :users, controllers: { registrations: "registrations" }
  
  # get 'home/index'
  get 'home/about'
  #root 'home#index'
  root 'home#index'
  
  devise_scope :user do
    get 'users/sign_up' => "registrations#new"
    get 'users/sign_in' => "devise/sessions#new"
    get 'users/sign_out' => "devise/sessions#destroy"
  end

  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
