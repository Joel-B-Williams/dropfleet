Rails.application.routes.draw do
  get 'sessions_controller/new'

  get 'sessions_controller/create'

  get 'sessions_controller/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
	
	get 		'/login', to: 'sessions#new'  
	post 		'/login', to: 'sessions#create'  
	delete 	'/logout', to: 'sessions#destroy'  

  resources :users, :fleets
end
