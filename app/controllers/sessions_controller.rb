class SessionsController < ApplicationController
  def new
    # if session[:name].nil?
    #   redirect_to '/'
    # end

  end

  def create

    username = params[:name]
    if params[:name]=="" || params[:name]== nil
      redirect_to sessions_new_path
    else

      session[:name] = username
    redirect_to "/"
    end

  end
  def destroy
    session.clear
    redirect_to "/login"
  end
end
