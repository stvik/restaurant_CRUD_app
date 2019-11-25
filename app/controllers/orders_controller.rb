class OrdersController < ApplicationController
    
    before_action :find_order, only: [:show, :edit, :update, :destroy]

    def new
        @order = Order.new
    end

    def show
    end

    def create
        order = Order.create(order_strong_params)
        redirect_to order_path(order)
    end
    
    def edit
    end

    def update
        order = Order.update(order_strong_params)
        redirect_to order_path(order)
    end

    def destroy
        @order.destroy
        redirect_to orders_path
    end

    private

    def find_order
        @order = Order.find(params[:id])
    end

    def order_strong_params
        params.require(:order).permit(:customer_id, :menu_item_id)
    end

end
