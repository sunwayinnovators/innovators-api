Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  
  devise_for  :users,
              :path => '/api/v1/users'
  
  # API version 1
  api_version(:module => "Api::V1", :path => {:value => "api/v1"}) do
    
    resources :clubs
    resources :events
    resource :galleries do
      resources :images, :only => [:create, :destroy]
    end
                
  end
  
end
