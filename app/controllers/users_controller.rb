class UsersController < ApplicationController
  def sign_up
  end

  def sign_up!
    user = User.new(
    username: params[:username],
    password_digest: params[:password]
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
    elsif @user.password_digest != params[:password]
    message = "Incorrect password."
    else
      message = "welcome, #{@user.username}!"
    end
    redirect_to action: :sign_in
    flash[:notice] = message
  end

  def sign_out
    redirect_to root_url
  end
end
