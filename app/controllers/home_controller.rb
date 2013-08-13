class HomeController < ApplicationController

  before_filter :check_login_status, :only => :index

  def login
    session[:user] = nil
  end

  def verify
    user = User.find_by email: params[:email]
    if user.nil?
      redirect_to login_path, flash: { error: "Bad credentials. Try again." }
    elsif user.password == params[:password]
      session[:user] = user.id
      redirect_to home_path
    else
      redirect_to login_path, flash: { error: "Bad credentials. Try again." }
    end
  end

  def register
    if params[:key_code] == "monkey"
      user = User.find_by email: params[:email]
      if user
        redirect_to login_path, flash: { error: "User already exists" }
      else
        user = User.create(email: params[:email], password: params[:password])
        session[:user] = user.id
        redirect_to home_path
      end
    else
      redirect_to login_path, flash: { error: "Valid invite code required", register: true }
    end
  end

  def index
    @campgrounds = Campground.all
  end

  def check_login_status
    redirect_to login_path if session[:user].nil?
  end

  def reservations
  end

end
