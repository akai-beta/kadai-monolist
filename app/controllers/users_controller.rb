class UsersController < ApplicationController
  def show
    @user = User.find(params{:id})
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find(user_params)
    if @user.save
      flash[:success] = '登録が完了しました'
      redirect_to @user
    else
      flash[:danger] = '登録できませんでした'
      render :new
    end
  end

private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end

end
