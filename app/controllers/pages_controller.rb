class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show, :search]

  def home
    @places = Place.all.limit(3)
    @events = Event.all.limit(3)
  end


  def search

    if params[:query].present?
      @places = Place.full_search(params[:query])
      @events = Event.full_search(params[:query])
    else
      @places = Place.all
      @events = Event.all
    end

    @markers = @places.where.not(latitude: nil, longitude: nil).map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        # infoWindow: { content: render_to_string(partial: "../views/places/map_box.html.erb", locals: { place: place })
      }
    end


     @events.where.not(latitude: nil, longitude: nil).each do |event|
      @markers << { lat: event.latitude, lng: event.longitude }
    end
  end

end
