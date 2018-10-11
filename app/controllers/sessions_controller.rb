class SessionsController < ApplicationController
 
    def create
      session[:name] = params[:name]
        if session[:name] == nil || session[:name].empty?
          redirect_to login_path
        else
          render '/secrets/show'
        end
    end
    
    def destroy
      session.delete :name
      redirect_to '/'
    end
  
end