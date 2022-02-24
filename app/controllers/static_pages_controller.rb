class StaticPagesController < ApplicationController
  def show
    if params[:username]
      flickr = Flickr.new Rails.application.credentials.flickr[:public], Rails.application.credentials.flickr[:secret]
      @links = []
      (flickr.people.getPhotos user_id: (flickr.people.findByUsername username: params[:username]).id).each {|photo| @links.push("https://live.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}_w.jpg")}
    end
  end
end

