# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    description 'a user that may know, or may not know'

    field :id, String, null: false
    field :email, String, null: false
    field :quotes, [Types::QuoteType], null: false
  end
end
