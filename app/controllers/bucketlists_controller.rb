class BucketlistsController < ApplicationController


def show
    @user = current_user
    @bucketlist = BucketList.find(params[:id])
    @places = @bucketlist.list_places
    @events = @bucketlist.list_events
  end

  def new
    @bucketlist = BucketList.new
  end

  def create
    @bucketlist = BucketList.new

    @user = current_user
    @bucketlist.user = @user

    @bucketlist.save
    redirect_to search_path
  end
end
# create one list for events and places

