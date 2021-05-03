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

  resources :hotels do
    resources :rooms do
      collection do
        get 'search'
      end
      resource :favorites, only: [:create, :destroy]
    end
  end
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
