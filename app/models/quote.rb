# frozen_string_literal: true

class Quote < ApplicationRecord
  belongs_to :user, optional: true
  delegate :email, to: :user, allow_nil: true

  validates :message, presence: true
end
