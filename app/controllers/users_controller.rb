class UsersController < ApplicationController
  def show
    @book=Book.new
    @user=User.find(params[:id])
    @books=@user.books
  end

  def index
    @book=Book.new
    @users=User.all
    @user=current_user
    @books=Book.all

  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    @user.save
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(@user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
end
