class CustomersController < ApplicationController

	before_action :find_customer, only: [:show, :edit, :update, :destroy]

	def home

	end

	def index
		@customers = Customer.all
	end

	def show

	end


	def new
		@customer = Customer.new
	end

	def create
		customer = Customer.create(customer_strong_params)

		redirect_to customer_path(customer)
	end

	def edit

	end

	def update
		@customer.update(customer_strong_params)

		redirect_to customer_path(@customer)
	end

	def destroy
		@customer.destroy

		redirect_to customers_path
	end

	private

	def customer_strong_params
		params.require(:customer).permit(:name, :gender)
	end

	def find_customer
		@customer = Customer.find(params[:id])
	end

end
