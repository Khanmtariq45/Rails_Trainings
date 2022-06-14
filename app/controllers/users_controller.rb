class UsersController < ApplicationController


  def index
     @user =User.page params[:page]
  end
  def new
    @user = User.new
  end
  def create
   @user = User.new(user_params)
   if @user.save
    UserMailer.Add_notification(@user).deliver_now
    redirect_to users_path
   else
    render "new"
   end
  end

  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render "new"
    end
  end
  def destroy
    @user= User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
