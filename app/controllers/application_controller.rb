class ApplicationController < ActionController::API
  
  # Extensions initialization
  include ActionController::Serialization
  include DeviseTokenAuth::Concerns::SetUserByToken

end