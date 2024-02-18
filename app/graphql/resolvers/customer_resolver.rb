module Resolvers
	class CustomerResolver < BaseResolver
		type Types::CustomerType, null: false
		argument :id, ID

		def resolve(id:)
			::Customer.find(id)
		end

	end
end