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

 private
def bar_params
 params.permit(:name, :zip_code, :address)
end
def find_bar
 @bar = Bar.find(params[:id])
  end
end
