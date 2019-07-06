# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :deleteQuote, mutation: Mutations::DeleteQuote
    field :createQuote, mutation: Mutations::CreateQuote
    field :deleteUser, mutation: Mutations::DeleteUser
    field :updateQuote, mutation: Mutations::UpdateQuote
    field :createUser, mutation: Mutations::CreateUser
  end
end
