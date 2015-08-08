class ApplicationController < ActionController::Base
  before_action :find_user
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
    def find_user
      if session[:user_id] != nil
        @user = User.find_by(id: session[:user_id])
      else
        @user = nil
      end
    end

    def authorize
      unless User.find_by(id: session[:user_id])
        redirect_to root_url
      end
    end
end
