class TeachersController < ApplicationController
  before_action :authenticate_user!


  def index
  end

  def show
    # @teacher = current_user.teachers.find(params[:id])
  end

  def new
    @teacher = current_user.teachers.build
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def teacher_params
  end
end
