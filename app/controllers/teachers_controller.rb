class TeachersController < ApplicationController
  before_action :authenticate_user!


  def index
  end

  def show
    @teacher = current_user.teachers.find(params[:id])
  end

  def new
    @teacher = current_user.teachers.build
  end

  def edit
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
   if @teacher.save
     @teacher.save
     redirect_to teacher_path(@teacher), notice: 'Teacher was saved.'
   else
     redirect_to new_teacher_path, alert: 'Your teacher did not save. Please try again.'
   end
  end

  def update
  end

  def destroy
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name)
  end
end
