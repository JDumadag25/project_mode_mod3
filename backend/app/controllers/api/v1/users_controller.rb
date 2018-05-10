class Api::V1::UsersController < ApplicationController
  def index
    @Users = User.all
    render json: @Users
  end

  def update
    @user.update(user_params)
      if @user.save
    render json: @user, status: :accepted
      else
   render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
 end
end

 private

def user_params
 params.permit(:first_name, :last_name, :age, :email, :zip_code, :address)
end

def find_user
 @user = User.find(params[:id])
end

end
