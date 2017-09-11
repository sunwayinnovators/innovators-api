class Api::V1::BaseController < ApplicationController

  before_action :skip_trackable
  before_action :authenticate_user!

  def skip_trackable
    request.env['devise.skip_trackable'] = true
  end

end
