# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, String, required: false
    end

    def user(id:)
      User.find(id)
    end

    field :quotes, [Types::QuoteType], null: false
    def quotes
      Quote.all
    end
  end
end
