class Api::V1::BaseController < ApplicationController
  
  before_filter :skip_trackable
  before_filter :authenticate_user!
  
  def skip_trackable
    request.env['devise.skip_trackable'] = true
  end
  
end
