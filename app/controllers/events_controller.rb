class EventsController < ApplicationController
  def index
    @events = Event.includes(:user).rotate
  end
end
