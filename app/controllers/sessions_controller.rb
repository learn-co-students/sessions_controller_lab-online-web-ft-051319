class SessionsController < ApplicationController
    def new
    end

    def create
# If the user is not logged in, the page should show them a login link.
      return redirect_to(controller: 'sessions',
                         action: 'new') if !params[:name] || params[:name].empty?
      session[:name] = params[:name]
# If the user is logged in, the page should say, "hi, #{name}", and provide a logout link.
      redirect_to controller: 'application', action: 'hello'
    end

    def destroy
      session.delete :name
      redirect_to controller: 'application', action: 'hello'
    end
end
