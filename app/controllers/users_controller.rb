class UsersController < ApplicationController
  skip_before_action :authenticate

  def sign_up
  end

  def sign_up!
    user = User.new(
    username: params[:username],
    password_digest: BCrypt::Password.create(params[:password])
    )
    if params[:password_confirmation] != params[:password]
      message = "Passwords do not match."
    elsif user.save
      message = "Your Faithbook account has been created!"
    else
      message = "Username already in use."
    end
    redirect_to new_profile_path
    flash[:notice] = message
  end

  def sign_in
  end

  def sign_in!
    @user = User.find_by(username: params[:username])
    if !@user
      message = "No account exists with that username."
    elsif !BCrypt::Password.new(@user.password_digest).is_password?(params[:password])
      message = "Incorrect password."
    else
      message = "welcome, #{@user.username}!"
      cookies[:username] = @user.username
      # mms: recommend you only save @user.id to the session.
      # mms:    It's much smaller and contains all the info you need to find the user again:  User.find(session[:user_id])
      session[:user] = @user
    end
    redirect_to root_url
    flash[:notice] = message
  end

  def sign_out
    reset_session
    redirect_to root_url
  end
end
