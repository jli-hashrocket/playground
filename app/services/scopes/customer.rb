module Scopes::Customer
	def order_by_first_name(first_name)
		return self if first_name.blank?
		order(first_name: :desc)
	end

	def order_by_last_name(last_name)
		return self if last_name.blank?
		order(last_name: :desc)
	end

	def order_by_email(email_order)
		return self if email_order.blank?
		order(email: email_order)
	end
end