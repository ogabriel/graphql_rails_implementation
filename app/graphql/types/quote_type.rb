# frozen_string_literal: true

module Types
  class QuoteType < Types::BaseObject
    description 'This a quote from the most interesting man in the world'

    field :id, String, null: false
    field :email, String, null: true
    field :message, String, null: true
  end
end
