Rails.application.routes.draw do
  resources :events
  resources :articles
  root :to => 'home#index', :as => 'dashboard'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  namespace :api, :defaults => {:format => :json} do

        # Event
        get 'events/allevents' => 'events#all'

        #Device
        post 'device' => 'device#get_devices'  

        #News
        get 'news/allnews' => 'news#all'    
    end
end
