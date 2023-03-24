class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        session[:username] = user.username
        render json: user
    end

    def destroy
        # puts session[:user_id]
        # session.to_h
        # byebug
        session.delete :user_id
        head :no_content
    end
end
