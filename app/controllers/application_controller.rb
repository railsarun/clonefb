class ApplicationController < ActionController::Base
  #before_action :authenticate_user!
  def after_sign_in_path_for(user) # code for join
    posts_path
  end
  def after_sign_up_path_for(user) # code for join
    posts_path
  end
end
