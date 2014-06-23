EventsApplication::Application.routes.draw do
  root :to => 'events#index'
  
  resources :sessions
  resources :users
  resources :events do
    member do
      put :add_user
      delete :remove_user
    end
  end
  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout',  to: 'sessions#destroy'
end
