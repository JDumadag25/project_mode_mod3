class Api::V1::EventsController < ApplicationController
  require "json"
  require "http"
  require "optparse"

  API_KEY =  api_key

  API_HOST = "https://api.yelp.com"
  SEARCH_PATH = "/v3/businesses/search"
  BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path

  DEFAULT_BUSINESS_ID = "yelp-new-york"
  DEFAULT_TERM = "bar"
  DEFAULT_LOCATION = "New York, NY"
  SEARCH_LIMIT = 5

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

def create
  zip_code = event_params[:zip_code]
  if zip_code.length == 5

    bar_url = "#{API_HOST}#{SEARCH_PATH}"
    params = {
      term: "bars",
      location: zip_code,
      limit: SEARCH_LIMIT
    }

    response = HTTP.auth("Bearer #{API_KEY}").get(bar_url, params: params)
    bar_response = response.parse
    # puts bar_response
    bar_array = bar_response["businesses"]

    bar_array.each do |bar|
      bar_name = bar["name"]
      bar_title = bar["categories"][0]["title"]
      bar_address = bar["location"]["address1"]
      bar_zip_code = bar["location"]["zip_code"]
      bar_price = bar["price"]
      Bar.create(name: bar_name, zip_code: bar_zip_code, address: bar_address, title: bar_title, price: bar_price)
    end


    restaurant_url = "#{API_HOST}#{SEARCH_PATH}"
    params = {
      term: "restaurants",
      location: zip_code,
      limit: SEARCH_LIMIT
    }

    response = HTTP.auth("Bearer #{API_KEY}").get(restaurant_url, params: params)
    restaurant_response = response.parse
    restaurant_array = restaurant_response["businesses"]

    restaurant_array.each do |restaurant|
      restaurant_name = restaurant["name"]
      restaurant_title = restaurant["categories"][0]["title"]
      restaurant_address = restaurant["location"]["address1"]
      restaurant_zip_code = restaurant["location"]["zip_code"]
      restaurant_price = restaurant["price"]
      Restaurant.create(name: restaurant_name, zip_code: restaurant_zip_code, address: restaurant_address, title: restaurant_title, price: restaurant_price)
    end


    music_url = "#{API_HOST}#{SEARCH_PATH}"
    params = {
      term: "music venue",
      location: zip_code,
      limit: SEARCH_LIMIT
    }

    response = HTTP.auth("Bearer #{API_KEY}").get(music_url, params: params)
    music_response = response.parse
    music_array = music_response["businesses"]

    music_array.each do |music|
      music_name = music["name"]
      music_title = music["categories"][0]["title"]
      music_address = music["location"]["address1"]
      music_zip_code = music["location"]["zip_code"]
      music_price = music["price"]
      Music.create(name: music_name, zip_code: music_zip_code, address: music_address, title: music_title, price: music_price)
    end


  end

end

  private

  def event_params
    params.require(:event).permit(:name, :zip_code, :address)
  end

  def find_event
    @event = Event.find(params[:id])
    end
end
