class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
    @newSubject = Subject.new
  end

  def show
    @subject = Subject.find(params[:id])
    @newPost = Post.new(:subject_id => params[:id])
    @posts = Post.where(subject_id: params[:id])
    @periodList = SubjectsService.getPeriodList()
  end

  def create
    @subject = Subject.new(params[:subject].permit(:name))
    @subject.save
    redirect_to subjects_index_path
  end
end
