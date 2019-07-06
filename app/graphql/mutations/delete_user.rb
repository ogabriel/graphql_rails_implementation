# frozen_string_literal: true

module Mutations
  class DeleteUser < GraphQL::Schema::RelayClassicMutation
    graphql_name 'DeleteUser'

    field :user, Types::UserType, null: true
    field :successful, Boolean, null: true

    argument :id, String, required: true
    argument :password, String, required: true

    def resolve(**args)
      user = User.find(args[:id])
      if user.valid_password?(args[:password])
        user.destroy
      else
        user.errors.add(:password, 'password not valid')
      end
      {
        user: user,
        successful: user.errors.blank?
      }
    end
  end
end
