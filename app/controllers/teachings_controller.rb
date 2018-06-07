class TeachingsController < ApplicationController
  before_action :authenticate_user!


  def index
    @teachings = current_user.teachings.all
  end

  def show
    @teaching = current_user.teachings.find(params[:id])
    @teachings = current_user.teachings.all
  end

  def new
    @teaching = current_user.teachings.build
  end

  def edit
  end

  def create
    @teaching = Teaching.new(teaching_params)
    # @teaching.user = current_user
   if @teaching.save
     @teaching.save
     redirect_to teaching_path(@teaching), notice: 'Teaching was saved.'
   else
     redirect_to new_teaching_path, alert: 'Your teaching did not save. Please try again.'
   end
  end

  def update
  end

  def destroy
  end

  private

  def teaching_params
    params.require(:teaching).permit(:name, :content, :media_type, :source, :favorite, :teacher_id)
  end
end
