Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # mount_devise_token_auth_for 'User', at: 'auth'
  
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  
  # By header version
  # api_version(:module => "V1", :header => {:name => "Accept", :value => "application/vnd.sunwayinnovators.com; version=1"}) do
  
  # By path
  api_version(:module => "V1", :path => {:value => "v1"}) do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :clubs
    resources :events
    resource :galleries do
      resources :images, :only => [:create, :destroy]
    end
  end
  
  # Old
  # mount_devise_token_auth_for 'User', at: 'v1/auth'
  # constraints subdomain: 'api' do
  # scope module: 'api', defaults: { format: 'json' } do
  #   namespace :v1 do
  #     resources :clubs
  #     resources :events
  #     resources :galleries do
  #       resources :images, :only => [:create, :destroy]
  #     end
  #   end
  # end
  # end
  
end
