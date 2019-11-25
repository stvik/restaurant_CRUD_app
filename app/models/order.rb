class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :menu_item

  def date_format
    I18n.l(self.created_at.in_time_zone("Eastern Time (US & Canada)"), format: :long)
  end
end
