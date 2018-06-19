class PagesController < ApplicationController
<<<<<<< HEAD
  skip_before_action :authenticate_user!, only: [:home, :search]
=======
  skip_before_action :authenticate_user!, only: [:home, :show, :search]
>>>>>>> master

  def home
    @places = Place.all.limit(3)
    @events = Event.all.limit(3)
  end

  def search
    @places = Place.all
    @events = Event.all
  end

end
