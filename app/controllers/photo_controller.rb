class PhotoController < ApplicationController
  def update
    photo = Photo.find(params[:id])
    photo.latitude = params[:latitude]
    photo.longitude = params[:longitude]
    photo.save
    render :text => photo.to_json
  end
end
