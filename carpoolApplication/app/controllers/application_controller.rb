class ApplicationController < ActionController::Base
    #hehe
  def hello
    render "/greetings/hello.html.erb"
  end
  protect_from_forgery with: :exception
end
