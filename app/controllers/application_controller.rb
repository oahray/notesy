class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  def landing
    json_response({
      message: "Welcome to Notes API",
    })
  end
end
