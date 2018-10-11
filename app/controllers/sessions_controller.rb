class SessionsController < ApplicationController
 
    def create
      session[:name] = params[:name]
        if session[:name] == nil || session[:name].empty?
          redirect_to sessions_new_path
        else
          redirect_to '/secrets/show'
        end
    end
    
    def destroy
      session.delete :name
      redirect_to '/'
    end
  
end