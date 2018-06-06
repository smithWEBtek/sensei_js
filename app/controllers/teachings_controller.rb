class TeachingsController < ApplicationController
  before_action :authenticate_user!


  def index
  end

  def show
  end

  def new
    @teaching = current_user.teachings.build
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

  def teaching_params
  end
end
