# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :customer, resolver: Resolvers::CustomerResolver
    field :all_customers, [CustomerType], null: false

    def all_customers
      Customer.all
    end

  end
end
