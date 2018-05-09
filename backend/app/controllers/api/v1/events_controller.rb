class Api::V1::EventsController < ApplicationController
  def index
    @events = Event.all
    render json: @events
  end
  def update
    @event.update(event_params)
    if @event.save
      render json: @event, status: :accepted
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
    end
end
  private
  def event_params
    params.permit(:name, :zip_code, :address)
  end
  def find_event
    @event = Event.find(params[:id])
    end
end
