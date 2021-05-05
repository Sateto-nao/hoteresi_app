Rails.application.routes.draw do

  root to: 'home#top'
  get 'about', to: 'home#about'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users, :only => [:show] do
    get :favorites, on: :collection
  end

  resources :rooms, :only => [:index]
  resources :hotels do
    collection do
      get 'search'
    end
    resources :rooms do
      resource :favorites, only: [:create, :destroy]
    end
  end
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
