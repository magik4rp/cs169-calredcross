class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
 
  before_filter :configure_permitted_parameters, :only => [:create]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :major, :email, :password, :avatar) }
  end
    
  
  def after_sign_in_path_for(users)
    profile_index_path #your path
  end

  
  
end
