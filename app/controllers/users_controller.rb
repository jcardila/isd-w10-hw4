class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params["user"])
    @user.password = BCrypt::Password.create(params["user"]["password"])
    if User.where({ email: params["user"]["email"] }).count > 0
      flash[:notice] = "Email already registered, use a different email address."
      redirect_to "/users/new"
    else
      @user.save
      redirect_to "/"
    end

    
  end
end
