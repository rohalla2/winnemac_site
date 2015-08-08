class SessionsController < ApplicationController
  # Logs a user in
  def create
    user_login = params[:login].downcase
    user = User.find_by(login: user_login)
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    reset_session
    redirect_to root_url , notice: "Logged out"
  end
end
