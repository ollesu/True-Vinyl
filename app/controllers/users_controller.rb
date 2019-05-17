class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit]
  def show
  end

  def edit
  end

  def update
    @user = current_user
    authorize @user
    @user.update(vinyl_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

    private

  def find_user
    @user = User.find(params[:id])
    authorize @user
  end

  def vinyl_params
    params.require(:user).permit(:email, :address, :first_name, :last_name, :photo)
  end
end
