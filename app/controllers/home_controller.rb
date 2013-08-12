class HomeController < ApplicationController

  before_filter :check_login_status, :except => [:login, :verify, :register]

  def login
  end

  def verify
    user = User.find_by email: params[:email]
    if user.nil?
      redirect_to login_path, flash: { error: "nicetry" }
    elsif user.password == params[:password]
      @current_user = user
      redirect_to home_path, notice: "Welcome"
    else
      redirect_to login_path, flash: { error: "comeon" }
    end
  end

  def register
    user = User.create(email: params[:email], password: params[:password])
    @current_user = user
    redirect_to home_path, notice: "Welcome"
  end

  def index

  end

  def check_login_status
    redirect_to login_path if @current_user.nil?
  end

end
