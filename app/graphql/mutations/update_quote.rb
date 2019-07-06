# frozen_string_literal: true

module Mutations
  class UpdateQuote < GraphQL::Schema::RelayClassicMutation
    graphql_name 'UpdateQuote'

    field :quote, Types::QuoteType, null: true
    field :successful, Boolean, null: true

    argument :id, String, required: true
    argument :userPassword, String, required: true
    argument :message, String, required: false
    argument :newUserId, String, required: false

    def resolve(**args)
      quote = Quote.includes(:user).find(args[:id])
      user = quote.user
      if user.valid_password?(args[:user_password])
        update_handler(quote, args)
      else
        quote.errors.add(:password, 'password not valid')
      end
      {
        quote: quote,
        successful: quote.errors.blank?
      }
    end

    def update_handler(quote, args)
      quote.update(message: args[:message]) if args[:message]
      quote.update(user: User.find(args[:new_user_id])) if args[:new_user_id]
    end
  end
end
