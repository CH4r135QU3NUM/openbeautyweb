class SessionsController < ApplicationController
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user, success: "Vous êtes connecté ! Bienvenue sur OpenBeauty"     
    else 
      flash.now[:danger] = 'Ton email et / ou mot de passe est invalide'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

	

end
