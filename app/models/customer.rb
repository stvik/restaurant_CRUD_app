class Customer < ApplicationRecord
	has_many :orders
	has_many :menu_items, through: :orders
end
