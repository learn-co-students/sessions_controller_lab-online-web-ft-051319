class SessionsController < ApplicationController

  def new
    #nothing needs to be done
  end

  def create
    if params[:name].nil? || params[:name].blank?
      redirect_to '/login'
    else
      session[:name]=params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
  end

end
