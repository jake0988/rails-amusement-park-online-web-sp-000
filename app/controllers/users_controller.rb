require 'pry'
class UsersController < ApplicationController
    # skip_before_action :verified_user, only: [:new, :create]

    def index
        render :home
    end

    def new
        @user = User.new
    end

    def create
        if (@user = User.create(user_params))
        binding.pry
            session[:user_id] = @user.id
        redirect_to user_path(@user)
        else
            render 'new'
        end
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
        params.require(:user).permit(:name, :height, :nausea, :happiness, :tickets, :admin, :password)
    end
end