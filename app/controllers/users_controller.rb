class UsersController < ApplicationController
  def show

    @user=User.find(params[:id])
    @books=Book.all

  end

  def update
  end

  def index
    @users=User.all
    @user=current_user

  end

  def edit
    @user=User.find(params[:id])
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
