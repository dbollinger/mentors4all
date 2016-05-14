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
    render json: {mentor: @mentor}
  end

end
