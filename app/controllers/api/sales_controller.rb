class Api::SalesController < ApplicationController

  def index
    @sales = Sale.all
    render "index.json.jb"
  end

  def show
    @sale = Sale.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @sale = Sale.find_by(id: params[:id])

    @sale.showing_id = params[:showing_id] || @sale.showing_id,
    @sale.customer_name = params[:customer_name] || @sale.customer_name,
    @sale.customer_email = params[:customer_email] || @sale.customer_email

    # @sale.save
    render "show.json.jb"
  end

  def destroy
    @sale = Sale.find_by(id: params[:id])
    @sale.destroy
    render json: {
      message: "Sale has been removed"
    }
  end

end
