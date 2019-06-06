class SubjectsController < ApplicationController
    def index
        @subjects = Subject.all
        @newSubject = Subject.new
    end

    def show
    end

    def create
        @subject = Subject.new(params[:subject].permit(:name))
        @subject.save
        redirect_to subjects_index_path
    end
end
