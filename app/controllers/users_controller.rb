class UsersController < ApplicationController
  def register
    user = User.new(user_params)
    if user.save
      render json: { auth_token: user.auth_token }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
