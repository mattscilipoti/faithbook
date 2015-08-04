class CommentsController < ApplicationController

  def new
    @profile = Profile.find(params[:profile_id])
    @comment = Comment.new
  end

  def create
    @profile = Profile.find(params[:profile_id])
    @comment = @profile.comments.create!(comment_params)

    redirect_to profile_path(@profile)
  end

  def show
    @comment = Comment.find(params[:id])
    @profile = Profile.find(params[:profile_id])
  end

  def edit
    @profile = Profile.find(params[:profile_id])
    @comment = @post.comments.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:profile_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
  end

  def destroy
    @profile = Profile.find(params[:profile_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to profile_path(@profile)
  end

end
