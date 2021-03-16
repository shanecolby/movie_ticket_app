class Api::AdminsController < ApplicationController
  def create
    user = User.new(
      username: params[:username],
      password_digest: params[:password_digest],
      password: params[:password]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
