class EventsController < ApplicationController
  def index
  end

  def show
    @events = Event.all
  end
end
