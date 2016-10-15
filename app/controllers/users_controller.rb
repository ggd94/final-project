class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!" #messaggio temporaneo
      redirect_to @user #redirect url all url user per lo specifico @user
      # Handle a successful save.
    else
      render 'new'
    end
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :password,
          :password_confirmation)
  end
end
