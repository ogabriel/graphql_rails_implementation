module Mutations
  class UpdateUser < GraphQL::Schema::RelayClassicMutation
    graphql_name 'UpdateUser'

    field :user, Types::UserType, null: true
    field :successful, Boolean, null: true

    argument :id, String, required: true
    argument :password, String, required: true
    argument :newEmail, String, required: false
    argument :newPassword, String, required: false
    argument :newQuote, String, required: false

    def resolve(**args)
      user = User.find(args[:id])
      if user.valid_password?(args[:password])
        update_handler(user, args)
      else
        user.errors.add(:password, 'password not valid')
      end
      {
        user: user,
        successful: user.errors.blank?
      }
    end

    def update_handler(user, args)
      user.update(email: args[:new_email]) if args[:new_email]
      user.quotes.create(message: args[:new_quote]) if args[:new_quote]
      user.update(password: args[:new_password]) if args[:new_password]
    end
  end
end
