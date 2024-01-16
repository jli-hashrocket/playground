module Scopes::Base
	def order_by_date(date_order)
		return self if date_order.blank?
		order(created_at: date_order)
	end
end