class Api::V1::BarsController < ApplicationController

  def index
    @bars = Bar.all
    render json: @bars
  end

  def update
    @bar.update(bar_params)
      if @bar.save
        render json: @bar, status: :accepted
      else
   render json: { errors: @bar.errors.full_messages }, status: :unprocessible_entity
  end
end


def create
  @bar = Bar.create(bar_params)
end

 private

def bar_params
 params.require(:bar).permit(:name, :zip_code, :address, :title, :price)
end

def find_bar
  @bar = Bar.find(params[:id])
  end
end







# require "json"
# require "http"
# require "optparse"
#
# API_KEY =  "apZZBw6ccgvvF4nG3wKtgxumzfTrKlu9v6mM0duku5Fdd3j8sFtHYB4GICPocL3yUUXwkAOAHaBvYJSYIuGVBcZMbgf5N0b1vcTnBEubtomJT1Ogb9Ds4s0Nm4_wWnYx"
#
# API_HOST = "https://api.yelp.com"
# SEARCH_PATH = "/v3/businesses/search"
# BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path
#
# DEFAULT_BUSINESS_ID = "yelp-new-york"
# DEFAULT_TERM = "bar"
# DEFAULT_LOCATION = "New York, NY"
# SEARCH_LIMIT = 1
