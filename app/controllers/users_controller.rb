class UsersController < ApplicationController
    def show
        users = User.find(session[:user_id])
        if users
        render json:users
        else
        render json: { error: "Not authorized" }, status: :unauthorized
        end
    end
end
