class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  before_action :authorize_request, except: %i[landing not_found]
  attr_reader :current_user

  def landing
    json_response({
      message: "Welcome to Notes API. To learn how to use this API, see documentation on the github page with the link below",
      github: "https://github.com/oahray/notesy",
    })
  end

  def not_found
    json_response({
      error: "Resource not found",
    }, :not_found)
  end

  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
  end
end
