class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
    mentor_hash = []
    @mentors.each do |mentor|
      temp_mentor = mentor.attributes
      temp_mentor["first_name"] = mentor.user.first_name
      temp_mentor["last_name"] = mentor.user.last_name
      temp_mentor["availabilities"] = mentor.availabilities
      temp_mentor["grade_levels"] = mentor.grade_levels
      temp_mentor["cs_subjects"] = mentor.cs_subjects
      mentor_hash << temp_mentor
    end
    render json: mentor_hash
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
