# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :updateQuote, mutation: Mutations::UpdateQuote
    field :createUser, mutation: Mutations::CreateUser
  end
end
