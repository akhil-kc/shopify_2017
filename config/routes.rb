Rails.application.routes.draw do
   get '/orders/upload'
#  get 'welcome/index'
  #resources :articles
  root 'welcome#index'
  resources :orders do
	get 'update'
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
