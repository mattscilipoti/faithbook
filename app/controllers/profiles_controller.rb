class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create!(profile_params)

    redirect_to profiles_path(@profile)
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)

    redirect_to profiles_path(@profile)
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy

    redirect_to profiles_path
  end

  private
  def profile_params
    params.require(:profile).permit(:full_name, :photo_url, :birth_date, :education, :about_me)
  end

end
