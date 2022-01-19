class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :null_session
  #before_action :authenticate_user!
  def create
     current_user

  end
  def after_sign_in_path_for(user) # code for join
    posts_path
  end
  def after_sign_up_path_for(user) # code for join
    posts_path
  end
  
end

