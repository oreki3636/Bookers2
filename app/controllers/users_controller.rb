class UsersController < ApplicationController
  def update
  end

  def index
    @users=User.all
    @user=current_user
    
  end

  def show
    
  end

  def create
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
end
