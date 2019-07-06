# frozen_string_literal: true

module Types
  class QuoteType < Types::BaseObject
    field :id, String, null: false
    field :email, String, null: true
    field :message, String, null: true
  end
end
