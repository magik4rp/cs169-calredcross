class PhotosController < ApplicationController
    require 'flickraw'
    before_action :set_photo, only: [:show, :destroy]
    before_action :set_flickr, only: [:create, :destroy]
    skip_before_filter :verify_authenticity_token
    def index
        @photos = Photo.all
    end
    
    def show
    end
    
    def new
        @photo = Photo.new
    end

    def addFavorite
        photo_id = params["image"]
        print(photo_id)
        current_user.photos << Photo.find(photo_id)
    end
    
    def create
        no_errors = true
        params[ :photos ].each{ |photo|
            photo_id = flickr.upload_photo photo.tempfile.path, :title => 'Title', :description => 'Description'
            photo_url = FlickRaw.url_o(flickr.photos.getInfo(photo_id: photo_id))
            @photo = Photo.new(photo_id: photo_id, photo_url: photo_url)
            if !@photo.save 
                no_errors = false
            end
        }
        respond_to do |format|
            if no_errors
                print("Saved photo! \n")
                format.html do
                    redirect_to '/photos'
                end
            else
                print("Unable to save photo! \n")
                format.html do
                    redirect_to '/photos'
                end
            end
        end
    end
    
    def destroy
        flickr.photos.delete(photo_id: @photo.photo_id)
        @photo.destroy
        respond_to do |format|
            format.html { redirect_to photos_url }
            format.json { head :no_content }
        end
    end
    
    private
    def set_photo
        @photo = Photo.find(params[:id])
    end
    
    def set_flickr
        FlickRaw.api_key = ENV['API_KEY']
        FlickRaw.shared_secret = ENV['SHARED_SECRET']
        
        flickr.access_token = ENV['ACCESS_TOKEN']
        flickr.access_secret = ENV['ACCESS_SECRET']
    end
end