require 'pry'
class LocationQuery
	include Scopes::Base
	include Scopes::Location

	def self.call(filters:)
		Location.extending(Scopes::Base, Scopes::Location)
            .where(city: filters[:city], address: filters[:address])
            .order_by_date(filters[:date_order])
            .order_by_city(filters[:city_order])
			.order_by_address(filters[:address_order])
	end
end