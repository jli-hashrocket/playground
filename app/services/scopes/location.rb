module Scopes::Location
	def order_by_name(name_order)
    	return self if name_order.blank?
		order(name: name_order)
	end

	def order_by_address(address_order)
		return self if address_order.blank?
		order(address: address_order)
	end

	def order_by_city(city_order)
		return self if city_order.blank?
		order(city: city_order)
	end

	def order_by_state(state_order)
		return self if state_order.blank?
		order(state: state_order)
	end

	def where(city)
		where("LIKE %?%", city)
	end
end