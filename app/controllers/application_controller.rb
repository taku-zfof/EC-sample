class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user.email=="master@sample"
     master_path
   else
     user_path
   end
  end
  
  

  protected
end
