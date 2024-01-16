require 'pry'
class CustomerQuery
	include Scopes::Base
	include Scopes::Customer

	def self.call(filters:)
		Customer.extending(Scopes::Base, Scopes::Customer)
			.order_by_date(filters[:date_order])
			.order_by_email(filters[:email_order])
	end
end