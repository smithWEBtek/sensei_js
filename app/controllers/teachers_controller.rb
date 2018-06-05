class TeachersController < ApplicationController
  def new
    @teacher = current_user.teachers.build
  end
end
