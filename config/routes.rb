Rails.application.routes.draw do

  root to: 'home#top'
  get 'about', to: 'home#about'

  get 'rooms/search', to: 'rooms#search'
  get 'rooms/:id/reserve', to: 'rooms#reserve'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
   post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
 end

  resources :users, :only => [:show] do
    collection do
      get :favorites
      get '/:id/myhotels', to: 'users#myhotels'
      get '/:id/myhotel/:hotel_id/myrooms', to: 'users#myrooms'
    end
  end

  resources :hotels, except: [:show] do
    resources :rooms do
      resource :favorites, only: [:create, :destroy]
    end
  end
  resources :reserves
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
