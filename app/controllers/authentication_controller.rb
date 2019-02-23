class AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate

  def authenticate
    authentication = AuthenticateUser.new(auth_params[:email], auth_params[:password])
    auth_token = authentication.call
    user = authentication.user
    response = { message: "Welcome back #{user.name}", auth_token: auth_token }
    json_response(response)
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end
