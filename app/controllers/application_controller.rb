class ApplicationController < ActionController::API
  
  respond_to :json
  
  # Extensions initialization
  include ActionController::Serialization
  
  # Devise strong params
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # 
  # protected
  # def configure_permitted_parameters
  #   
  #   devise_parameter_sanitizer.permit(:sign_up) do |user_params|
  #     user_params.permit(:email, :password, :password_confirmation)
  #     # user_params.permit({ roles: [] }, :email, :password, :password_confirmation)
  #   end
  #   
  #   devise_parameter_sanitizer.permit(:sign_in) do |user_params|
  #     user_params.permit(:email, :password)
  #   end
  # end

end