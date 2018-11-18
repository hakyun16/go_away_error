class HomeController < ApplicationController
  def index
    @all_list = Lecture.all
  end

  def new
  end

  def create
    new_lecture = Lecture.new(name: params[:name], major: params[:major], professor: params[:professor], content: params[:content])
    new_lecture.save
    
    redirect_to '/'
  end

  def show
    @lecture = Lecture.find(params[:lecture_id])
  end

  def edit
    @lecture = Lecture.find(params[:lecture_id])
  end

  def update
    lecture = Lecture.find(params[:lecture_id])
    lecture.name = params[:name]
    lecture.major = params[:major]
    lecture.professor = params[:professor]
    lecture.content = params[:content]
    lecture.save
    
    redirect_to "/home/show/#{params[:lecture_id]}"
  end

  def destroy
    lecture = Lecture.find(params[:lecture_id])
    lecture.destroy
    redirect_to "/"
  end
end
