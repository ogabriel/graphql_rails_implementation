class Quote < ApplicationRecord
  belongs_to :user

  delegate :email, to: :user
end
