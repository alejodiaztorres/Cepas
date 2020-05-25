Rails.application.routes.draw do
  devise_for :admins
  resources :magazines
  resources :oenologists
  resources :strains
  resources :wines

  authenticate :admin do
    resources :magazines
    resources :oenologists
    resources :strains
    resources :wines
    root 'wines#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
