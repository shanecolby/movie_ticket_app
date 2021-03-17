class Api::SessionsController < ApplicationController
  def create
    admin = User.find_by(email: params[:username])
    if admin && admin.authenticate(params[:password])
      jwt = JWT.encode(
        {
          admin_id: admin.id, 
          exp: 24.hours.from_now.to_i 
        },
        Rails.application.credentials.fetch(:secret_key_base), 
        "HS256"
      )
      render json: { jwt: jwt, email: admin.email, admin_id: admin.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
  
end
