class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show, :search]

  def home
    @places = Place.all.limit(3)
    @events = Event.all.limit(4)
  end


  def search
    query = params[:query] || ""
    if params[:search] && category = params[:search][:category]
      query << "& (#{category.join(" OR ")})"
    end


    if !query.empty?
      @places = Place.full_search(query)
      @events = Event.full_search(query)
    else
      @places = Place.all
      @events = Event.all
    end

    if params[:start_date] && !params[:start_date].empty?
      @events = @events.start_date(params[:start_date])
      # @events = Event.full_search(params[:query])
    end

    if params[:age_0_2] && !params[:age_0_2].empty?
      @events = @events.age_0_2
      @places = @places.age_0_2
      # @events = Event.full_search(params[:query])
    end

    if params[:age_3_8] && !params[:age_3_8].empty?
      @events = @events.age_3_8
      @places = @places.age_3_8
      # @events = Event.full_search(params[:query])
    end

    if params[:age_9_15] && !params[:age_9_15].empty?
      @events = @events.age_9_15
      @places = @places.age_9_15
      # @events = Event.full_search(params[:query])
    end



    @markers = @places.where.not(latitude: nil, longitude: nil).map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        # infoWindow: { content: render_to_string(partial: "../views/places/map_box.html.erb", locals: { place: place })
      }

    end

     @markers = @events.where.not(latitude: nil, longitude: nil).each do |event|
      @markers << { lat: event.latitude, lng: event.longitude }
    end
  end

  # def filter
  # @events = Event.where(nil) # creates an anonymous scope
  #  @events = @events.title(params[:title]) if params[:title].present?
  #  @events = @events.description(params[:description]) if params[:description].present?
  #  @events = @events.start_date(params[:start_date]) if params[:start_date].present?



  private

#   def filtering_params
# params.slice(:title, :description, :start_date)
#   end

end
