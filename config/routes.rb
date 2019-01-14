Rails.application.routes.draw do

  get '/home', to: 'static_pages#home'
  get '/about_us', to: 'static_pages#about_us'
  get '/contact_us', to: 'static_pages#contact_us'
  get '/catalog', to: 'static_pages#catalog'
  get '/pricing', to: 'static_pages#pricing'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static_pages#home'
end
