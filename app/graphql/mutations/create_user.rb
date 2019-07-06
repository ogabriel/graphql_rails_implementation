# frozen_string_literal: true

module Mutations
  class CreateUser < GraphQL::Schema::RelayClassicMutation
    graphql_name 'CreateUser'

    field :user, Types::UserType, null: true
    field :successful, Boolean, null: true

    argument :email, String, required: false
    argument :password, String, required: false

    def resolve(**args)
      user = User.create(email: args[:email], password: args[:password])
      {
        user: user,
        successful: user.errors.blank?
      }
    end
  end
end
