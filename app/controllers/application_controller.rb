class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
 
  before_filter :configure_permitted_parameters, :only => [:create]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :major, :email, :password, :avatar) }
    # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :is_female, :date_of_birth, :avatar) }
  end
    
  
  def after_sign_in_path_for(users)
    profile_index_path #your path
  end

  
  
end
