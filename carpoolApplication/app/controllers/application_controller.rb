class ApplicationController < ActionController::Base
    #hehe
  def hello
    render html: "Welcome to CARPOOL"
  end
  protect_from_forgery with: :exception
end
