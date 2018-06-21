class PlacesController < ApplicationController

  def index

    if params[:query].present?
      @places = Place.full_search(params[:query])
    else
      @places = Place.all
    end
    @markers = @places.where.not(latitude: nil, longitude: nil).map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        # infoWindow: { content: render_to_string(partial: "../views/places/map_box.html.erb", locals: { place: place }) }
      }
    end
  end

  def show
    @place = Place.find(params[:id])
    @list_place = ListPlace.new
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
     @place = Place.find(params[:id])
     if @place.update(place_params)
       redirect_to @place, notice: "Place was updated"
     else
       render :edit
     end
   end

  private
  def set_places
    @place = Place.find(params[:place_id])
  end

  def place_params
    params.require(:place).permit(:category, :title, :address, :indoor, :default_age, :min_age, :max_age)

  end
end
