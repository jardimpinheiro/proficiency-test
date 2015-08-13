class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:destroy]

  def index
    @classrooms = Classroom.all
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      redirect_to classrooms_url, notice: 'Matrícula criada com sucesso.'
    else
      render :new
    end
  end

  def destroy
    @classroom.destroy
    redirect_to classrooms_url, notice: 'Matrícula removida com sucesso.'
  end

  private

    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    def classroom_params
      params.require(:classroom).permit(:student_id, :course_id)
    end
end
