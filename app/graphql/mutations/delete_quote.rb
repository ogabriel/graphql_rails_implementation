module Mutations
  class DeleteQuote < GraphQL::Schema::RelayClassicMutation
    graphql_name 'DeleteQuote'

    field :quote, Types::QuoteType, null: true
    field :successful, Boolean, null: true

    argument :id, String, required: true
    argument :userPassword, String, required: true

    def resolve(**args)
      quote = Quote.includes(:user).find(args[:id])
      user = quote.user
      if user.valid_password?(args[:user_password])
        quote.destroy
      else
        quote.errors.add(:password, 'password not valid')
      end
      {
        quote: quote,
        successful: quote.errors.blank?
      }
    end
  end
end
