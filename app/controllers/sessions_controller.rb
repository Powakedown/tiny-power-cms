class SessionsController < ApplicationController
  layout "authentication"
  def new
    redirect_to root_path, notice: "You are already signed in" if user_signed_in?
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Mode édition activé"
    else
      redirect_to root_path, alert: "Mot de passe ou email invalide"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Mode édition désactivé"
  end
end
