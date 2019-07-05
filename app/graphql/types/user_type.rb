module Types
  class UserType < Types::BaseObject
    description 'User'

    field :id, String, null: false
    field :email, String, null: false
    # field :password, String, null: false
    field :quotes, [Types::QuoteType], null: false
  end
end
