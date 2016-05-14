class AvailabilitiesController < ApplicationController
  def index
    @mentor = Mentor.find(params[:mentor_id])

    render json: {availabilities: @mentor.availabilities}
  end
end
