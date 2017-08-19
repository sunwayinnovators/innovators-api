# frozen_string_literal: true

class V1::EventsController < V1::BaseController

  before_action :set_gallery
  
  def create
    add_more_images(images_params[:images]))
    render json: status: :bad_request unless @gallery.save
    render json: @gallery, status: :created, location: v1_gallery_url(@gallery)
  end
  
  def destroy
    remove_image_at_index(params[:id].to_i)
    render json: status: :bad_request unless @gallery.save
    render json: @gallery, status: :created, location: v1_gallery_url(@gallery)
  end

  private
    def set_gallery
      @gallery = Gallery.find(params[:gallery_id])
    end

    def add_more_images(new_images)
      images = @gallery.images # copy the old images 
      images += new_images # concat old images with new ones
      @gallery.images = images # assign back
    end
    
    def remove_image_at_index(index)
      remain_images = @gallery.images # copy the array
      # deleted_image = remain_images.delete_at(index) # delete the target image
      @gallery.remove_images! if remain_images.empty?
      deleted_image.try(:remove!) # delete image from S3
      @gallery.images = remain_images # re-assign back
    end

    def images_params
      params.require(:gallery).permit({images: []}) # allow nested params as array
    end
end