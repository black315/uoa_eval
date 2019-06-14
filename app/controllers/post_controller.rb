class PostController < ApplicationController
  def create
    @post = Post.new(params[:post].permit(:subject_id, :content, :instructor, :period, :rate))
    @post.save
    redirect_to subjects_show_path(params[:post]['subject_id'])
  end
end