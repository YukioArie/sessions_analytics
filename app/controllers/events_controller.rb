class EventsController < ApplicationController
  def index
    @events = Event.all.rotate
  end
end
