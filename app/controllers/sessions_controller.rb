class SessionsController < ApplicationController
  layout "authentication"
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Signed in successfully"
    else
      redirect_to admin_path, alert: "Invalid email or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to admin_path, notice: "Signed out successfully"
  end
end
