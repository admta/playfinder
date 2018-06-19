class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]

  def home
  end

  def search
    @places = Place.all
    @events = Event.all
  end

end
