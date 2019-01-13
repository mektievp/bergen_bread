Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/about_us'

  get 'static_pages/contact_us'

  get 'static_pages/catalog'

  get 'static_pages/pricing'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static_pages#home'
end
