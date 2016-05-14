class MentorsController < ApplicationController
  def index
    render json: {mentors: Mentor.all}
  end

  def new
  end

  def create
    @mentor = Mentor.new(mentor_params)
    if @mentor.save
      render json: {mentor: @mentor}
    else
      render json: @mentor.errors, status: :unprocessable_entity
    end
  end

  def show
    @mentor = Mentor.find(params[:id])
    render json: {mentor: @mentor, availabilities: @mentor.availabilities, grade_levels: @mentor.grade_levels, subjects: @mentor.cs_subjects}
  end

  def update
    @mentor = Mentor.find(params[:id])
    @mentor.update_attributes(mentor_params)

    render json: {mentor: @mentor}
  end

  private
    def mentor_params
      params.require(:mentor).permit(:location, :employment_status, :employment_location, :prior_experience, :courses_taken, :interest_in_mentoring, :example_explanation, :cs_expertise)
    end
end
