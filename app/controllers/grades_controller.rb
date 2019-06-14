class GradesController < ApplicationController
  def create
    @grade = Grade.new
    if @grade.save_grade(
      grade: params[:grade][:grade],
      pass: params[:grade][:pass],
      attendance: params[:grade][:attendance]
    )
      flash[:notice] = "Grade saved!"
      redirect_to grades_path
    else
      binding.pry
      render :new
    end
  end

  def parameters
    {
      grade: params[:grade][:grade],
      pass: params[:grade][:pass],
      attendance: params[:grade][:attendance]
    }
  end
end
