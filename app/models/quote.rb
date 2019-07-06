# frozen_string_literal: true

class Quote < ApplicationRecord
  belongs_to :user

  delegate :email, to: :user, allow_nil: true
end
