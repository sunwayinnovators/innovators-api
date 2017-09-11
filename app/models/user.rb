class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :trackable,
         :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JWTBlacklist

   def jwt_payload
     { 'email' => email }
   end
end
