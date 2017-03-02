Rails.application.routes.draw do
  get 'page/usermanagement'

  get 'page/home'

  get 'page/contact'

  devise_for :users
  
  root 'page#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
