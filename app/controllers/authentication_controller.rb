class AuthenticationController < ApplicationController
  def login
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      render json: { auth_token: user.auth_token }
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end
end
