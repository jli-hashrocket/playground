# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :full_name, String, null: false,
      description: "Full name of customer"
    def full_name
      "Hello World"
    end
  end
end
