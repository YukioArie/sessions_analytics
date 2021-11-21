class EventsController < ApplicationController
  def index
    @events = Event.all.rotate
    respond_to do |format|
      format.json { render json: @events }
    end
  end

  def create_event
    Event.create!(
      url: request.path,
      visitorId: cookies[:visitorId]
    )
  end
end