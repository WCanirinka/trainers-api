class GymClassesController < ApplicationController # :nodoc:
  before_action :set_gym_class, only: %i[show update destroy]

  def index
    json_response(GymClass.all)
  end

  def show
    json_response(@gym_class)
  end

  def create
    @gym_class = GymClass.create!(gym_class_params)
    json_response(@gym_class, :created)
  end

  def update
    @gym_class.update(gym_class_params)
    head :no_content
  end

  def destroy
    @gym_class.destroy
    head :no_content
  end

  private

  def gym_class_params
    params.permit(:gym_instructor_id, :user_id, :classTime, :status)
  end

  def set_gym_class
    @gym_class = GymClass.find_by!(id: params[:id])
  end
end
