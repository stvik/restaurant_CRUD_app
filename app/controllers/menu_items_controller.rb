class MenuItemsController < ApplicationController

	before_action :find_menu_item, only: [:show, :edit, :update, :destroy]

	def index
		@menu_items = MenuItem.all
	end

	def show

	end

	def new
		@menu_item = MenuItem.new	
	end

	def create
		menu_item = MenuItem.create(menu_item_strong_params)

		redirect_to menu_item_path(menu_item)
	end

	def edit

	end

	def update
		menu_item = @menu_item.update(menu_item_strong_params)

		redirect_to menu_item_path(@menu_item)
	end

	def destroy
		@menu_item.destroy

		redirect_to menu_items_path
	end

	private

	def find_menu_item
		@menu_item = MenuItem.find(params[:id])
	end

	def menu_item_strong_params
		params.require(:menu_item).permit(:name, :price)
	end
end
