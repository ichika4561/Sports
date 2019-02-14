class ApplicationController < ActionController::Base
    # helper_method :current_user
    # before_action :login_required
    
    # def login_required
    #   redirect_to login_path unless current_user
    # end
    
    # private
    # ログイン機能をdeviseを利用。deviseにcurrent_userは定義済み。
    # def current_user
    #   @current_user ||=User.find_by(id: session[:user_id]) if session[:user_id]
    # end 
end
