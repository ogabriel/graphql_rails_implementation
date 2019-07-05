# frozen_string_literal: true

module Mutations
  class DeleteUser < GraphQL::Schema::RelayClassicMutation
    graphql_name 'DeleteUser'

    field :user, Types::UserType, null: true
    field :result, Boolean, null: true

    argument :id, String, required: true

    def resolve(**args)
      user = User.find(args[:id])
      user.destroy
      {
        user: user,
        result: user.errors.blank?
      }
    end
  end
end
