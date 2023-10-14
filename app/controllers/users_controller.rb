class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_update)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end

  end

  private
  def user_update
    params.require(:user).permit(:name, :email)
  end

end
