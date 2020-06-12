#**
# frozen_string_literal: true
#Module
#*

class GymInstructorsController < ApplicationController
  before_action :set_instructor, only: %i[show update destroy]

  def index
    @instructors = GymInstructor.all
    json_response(@instructors)
  end

  def show
    json_response(@instructor)
  end

  def create
    @instructor = GymInstructor.create!(instructor_params)
    json_response(@instructor)
  end

  def update
    @instructor.update(instructor_params)
    head :no_content
  end

  def destroy
    @instructor.destroy
    head :no_content
  end

  private

  def instructor_params
    params.permit(:name, :trainingType, :gymName, :gymImage)
  end

  def set_instructor
    @instructor = GymInstructor.find(params[:id])
  end
end
