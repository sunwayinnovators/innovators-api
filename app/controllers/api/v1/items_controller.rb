# frozen_string_literal: true

module Api::V1
  class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :update, :destroy]

    # GET /items
    def index
      @items = Item.all

      render json: @items
    end

    # GET /items/1
    def show
      render json: @item
    end

    # POST /items
    def create
      @item = Item.new(item_params)

      if @item.save
        params[:item][:document_data].each do |file|
          @item.documents.create!(:document => file)
        render json: @item, status: :created, location: api_v1_event_url(@item)
      else
        render json: @item.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /items/1
    def update
      if @item.update(item_params)
        render json: @item
      else
        render json: @item.errors, status: :unprocessable_entity
      end
    end

    # DELETE /items/1
    def destroy
      @item.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_item
        @item = Item.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def item_params
        params.require(:item).permit(:name, :description, :picture, :document_data => [])
      end
  end
end