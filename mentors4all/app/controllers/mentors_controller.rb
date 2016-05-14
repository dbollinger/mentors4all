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
    render json: {mentor: @mentor}
  end

  def update
    @mentor = Mentor.find(params[:id])
    @mentor.update_attributes(mentor_params)

    render json: {mentor: @mentor}
  end

end
