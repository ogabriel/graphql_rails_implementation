module Types
  class QuoteType < Types::BaseObject
    field :email, String, null: false
    field :message, String, null: false
  end
end
