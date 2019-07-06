module Mutations
  class CreateQuote < GraphQL::Schema::RelayClassicMutation
    field :quote, Types::QuoteType, null: true
    field :sucessful, Boolean, null: true

    argument :message, String, required: true
    argument :email, String, required: true

    def resolve(**args)
      user = User.find_by(email: args[:email])
      quote = Quote.create(message: args[:message], user: user)
      {
        quote: quote,
        sucessful: quote.errors.blank?
      }
    end
  end
end
