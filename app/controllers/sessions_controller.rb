require 'pry'

class SessionsController < ApplicationController
  
  

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else 
      session[:name] = params[:name]
      redirect_to "/"
    end 
  end 

  def destroy
    if session[:name]
      session.delete :name
    else 
      redirect_to sessions_new_path
    end 
  end 

end
