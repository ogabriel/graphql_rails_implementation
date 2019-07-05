# frozen_string_literal: true

module Mutations
  class UpdateQuote < GraphQL::Schema::RelayClassicMutation
    graphql_name 'UpdateQuote'

    field :quote, Types::QuoteType, null: true
    field :result, Boolean, null: true

    argument :id, String, required: true
    argument :message, String, required: true

    def resolve(**args)
      quote = Quote.find(args[:id])
      quote.update(message: args[:message])
      {
        quote: quote,
        result: quote.errors.blank?
      }
    end
  end
end
