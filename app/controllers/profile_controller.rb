require 'google/api_client/client_secrets'

class ProfileController < ApplicationController

  def index
    @user = current_user
    @images = ["lilbub1.jpeg", "lilbub2.jpg", "lilbub4.jpg"]
    @events = Event.all.last(3)
    if current_user.level == "gold"
      @level = "gold_status.png"
    # elsif current_user.level == "bronze"
    else
      @level = "bronze_medal.png"
    end
    
     if @user.refresh_token.nil? 
      # need to authorize faaaam 
      client_secrets = Google::APIClient::ClientSecrets.load
      auth_client = client_secrets.to_authorization
      auth_client.update!(
      :scope => 'https://www.googleapis.com/auth/calendar',
      :redirect_uri => 'localhost:3000/authen_accept/accept',
      :access_type => 'offline'
      )
      redirect_to auth_client.authorization_uri.to_s
    else
      redirect_to '/authen_accept/accept'
    end 
    
    
   
  end
  
  #hi

  def update
    @user = current_user 
    
    if params["name"]
      print("~~~~~" + params["name"].to_s)
      @user.editName(params["name"])
    end
    if params["details"]
      print("~~~~~" + params["details"].to_s)
      @user.editDescription(params["details"])
    end
    if params[:user][:avatar]
      print("~~~~~" + params[:user][:avatar].to_s)
      @user.update_attribute(:avatar, params[:user][:avatar])
    end
  end
end