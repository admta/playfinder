class ListPlacesController < ApplicationController

  def new
    @place_list = ListPlace.new
  end

  def create
    @bucketlist = current_user.bucket_list
    @user = current_user
    @place = Place.find(params[:list_place][:list_place].to_i)

    @place_list = ListPlace.create(bucket_list: @bucketlist, place: @place)
    # redirect_to bucketlist_path(@bucketlist)
  end

  def destroy
    @bucketlist = current_user.bucket_list
    @user = current_user
    @place_list = ListPlace.find(params[:id])
    @place_list.destroy
    redirect_to bucketlist_path(@bucketlist)

  end

end
