module Mutations
  class CreateUser < GraphQL::Schema::RelayClassicMutation
    graphql_name 'CreateUser'

    field :user, Types::UserType, null: false

    argument :email, String, required: true
    argument :password, String, required: true

    def resolve(**args)
      user = User.create(email: args[:email], password: args[:password])
      {
        user: user,
        result: user.errors.blank?
      }
    end
  end
end
