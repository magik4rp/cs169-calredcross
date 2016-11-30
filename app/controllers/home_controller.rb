class HomeController < ApplicationController
  # For the sake of testing Heroku
  def index
    @images = Info.first.home_images

    if Info.all.empty?
      @info = Info.new
      @info.save
    else
      @info = Info.first
    end
  end
  
  def update
    @info = Info.first
    
    if params["bulletin"]
      print("~~~~~" + params["bulletin"].to_s)
      @info.update_bulletin(params["bulletin"])
    end
    
    if params["motm_name"]
      print("~~~~~" + params["motm_name"].to_s)
      @info.update_motm_name(params["motm_name"])
    end
    
    if params["motm_comments"]
      print("~~~~~" + params["motm_comments"].to_s)
      @info.update_motm_comments(params["motm_comments"])
    end
    
    if params[:info][:avatar]
      print("~~~~~~~~~~~~" + params[:info][:avatar].to_s + "~~~~~~~~~")
      @info.update_attribute(:avatar, params[:info][:avatar])
    end
  end
end
