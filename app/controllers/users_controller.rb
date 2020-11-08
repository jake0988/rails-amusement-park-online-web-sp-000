require 'pry'
class UsersController < ApplicationController
    def index
        render :home
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
        end
        redirect_to user_path(@user)
    end

    def signin
        @user = User.find_by(params[:name])
        @user.id = session[:user_id]
    end


    def show
        if session[:user_id]
           @user = User.find(session[:user_id])
        else
            @user = User.find(params[:id])
        end
    end

    def edit

    end

    def update
    
    end    

    private
    
    def user_params
        params.require(:user).permit(:name, :mood, :height, :nausea, :happiness, :tickets, :password)
    end
end