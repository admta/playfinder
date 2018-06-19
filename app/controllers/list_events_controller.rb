class ListEventsController < ApplicationController

  def new
    @event_list = ListEvent.new
  end

  def create
    @bucketlist = current_user.bucket_list
    @user = current_user
    @event = Event.find(params[:list_event][:list_event].to_i)

    @event_list = ListEvent.create(bucket_list: @bucketlist, event: @event)
    redirect_to bucketlist_path(@bucketlist)
  end

  def destroy
    @bucketlist = current_user.bucket_list
    @user = current_user
    @event_list = ListEvent.find(params[:id])
    @event_list.destroy
    redirect_to bucketlist_path(@bucketlist)

  end
end
