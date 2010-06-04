class MapController < ApplicationController
  def index
    @photos = Photo.all.collect do |p|
      { "id" => p.id,
        "url" => p.url,
        "latitude" => p.latitude,
        "longitude" => p.longitude }
    end
  end
end
