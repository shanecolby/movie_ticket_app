class Api::SalesController < ApplicationController

  def index
    @sales = Sale.all
    render "index.json.jb"
  end

  def show
    @sale = Sale.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @sale = Sale.new(
      showing_id: params[:showing_id],
      customer_name: params[:customer_name],
      customer_email: params[:customer_email],
      credit_card_number: params[:credit_card_number],
      expiration_date: params[:expiration_date]
    )
    @sale.save
    render "show.json.jb"
  end

  def update
    @sale = Sale.find_by(id: params[:id])

    @sale.showing_id = params[:showing_id] || @sale.showing_id,
    @sale.customer_name = params[:customer_name] || @sale.customer_name,
    @sale.customer_email = params[:customer_email] || @sale.customer_email

    @sale.save
    render "show.json.jb"
  end

  def destroy
    @sale = Sale.find_by(id: params[:id])
    @sale.destroy
    render json: {
      message: "Sale has been removed"
    }
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      OrderMailer.with(order: @order).new_order_email.deliver_later

      flash[:success] = "Thank you for your order! We'll get contact you soon!"
      redirect_to root_path
    else
      flash.now[:error] = "Your order form had some errors. Please check the form and resubmit."
      render :new
    end
  end

end
