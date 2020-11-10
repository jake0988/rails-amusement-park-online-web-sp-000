require 'pry'
class SessionController < ApplicationController
    def new
        @user = User.new
    end

    def create
        user = User.find_by(name: params[:name])
        session[:user_id] = user.id
        redirect_to "/users/#{user.id}"
    end


end
