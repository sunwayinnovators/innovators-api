# frozen_string_literal: true

class Api::V1::EventsController < Api::V1::BaseController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  
  before_action :set_event, only: [:show, :update, :destroy]
  before_action :check_header, only: [:show, :index]
  respond_to :json
  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def create
    @event = Event.new(event_params)
    @event.tag_list = params[:tag_list]

    if @event.save
      render json: @event, status: :created, location: api_v1_event_url(@event)
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    def record_not_found(error)
      render json: { error: error.message }, status: :not_found
    end

    def check_header
      render nothing: true, status: 406 unless 
      params[:format] == 'json' || request.headers['Accept'] =~ /json/
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:name, :content, :tag_list)
    end
    
end
