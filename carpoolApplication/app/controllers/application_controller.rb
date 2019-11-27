class ApplicationController < ActionController::Base
  helper_method :current_user, :admin?, :driver?


  def hello
    render "/greetings/hello.html.erb"
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def current_address
    @current_address = RiderApplication.street_address
  end

  def admin?
    current_user && current_user.role == "admin"
  end

  def driver?
    current_user && current_user.role == "driver"
  end
end
