class UsersController < ApplicationController
  layout 'phcfm'
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_back_or_to root_url, :notice => "Successfuly Signed up!"
    else
      render :new
    end
  end 
end
