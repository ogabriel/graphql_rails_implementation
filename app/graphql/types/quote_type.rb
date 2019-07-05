# frozen_string_literal: true

module Types
  class QuoteType < Types::BaseObject
    field :id, String, null: false
    field :email, String, null: false
    field :message, String, null: false
  end
end
