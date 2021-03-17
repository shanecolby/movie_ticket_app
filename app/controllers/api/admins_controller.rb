class Api::AdminsController < ApplicationController
  def create
    admin = Admin.new(
      username: params[:username],
      password_digest: params[:password_digest],
      password: params[:password]
    )
    if admin.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
