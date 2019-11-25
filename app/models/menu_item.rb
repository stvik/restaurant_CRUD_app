class MenuItem < ApplicationRecord
	has_many :orders
	has_many :customers, through: :orders

	def money_format
		number_to_currency(self.price, :unit => "$")
	end
end
