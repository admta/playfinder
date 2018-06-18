class EventsController < ApplicationController

  def index
    if params[:query].present?
      @events = Event.full_search(params[:query])
    else
      @events = Event.all
    end
    @markers = @events.where.not(latitude: nil, longitude: nil).map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: { content: render_to_string(partial: "../views/events/map_box.html.erb", locals: { place: place }) }
      }
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private
  def set_events
    @event = Event.find(params[:event_id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :start_time, :start_date, :end_time)
  end
end


