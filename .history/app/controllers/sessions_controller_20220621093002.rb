class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user 
      if user.authenticate(password: params[:session][:password])
    end
  end

  def destroy
  end
end