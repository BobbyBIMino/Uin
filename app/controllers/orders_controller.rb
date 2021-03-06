class OrdersController < ApplicationController
# before_action :signed_in_user

  def create
    @order = current_user.orders.build(order_params)
    if @order.save
      flash[:success] = "order created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def show
    @order = Order.find(params[:order_id])
    @file_in_orders =@order.file_in_orders
    render  @file_in_orders
  end

  def destroy
  end

  private

    def order_params
      params.require(:order).permit(:order_number)
    end
end
