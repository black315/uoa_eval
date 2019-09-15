class PostsController < ApplicationController
  def search
    if params[:keyword]
      @posts = Post.where('(content LIKE ?) OR (instructor LIKE ?)',
                          "%#{params[:keyword]}%", "%#{params[:keyword]}%")
    else
      @posts = Post.all
    end
  end

  def create
    @post = Post.new(params[:post].permit(:subject_id, :content, :instructor, :period, :rate))
    @post.save
    redirect_to subjects_show_path(params[:post]['subject_id'])
  end
end
