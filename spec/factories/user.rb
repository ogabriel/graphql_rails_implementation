# frozen_string_literal: true

FactoryBot.define do
  factory :good_user, class: User do
    email { Faker::Internet.email }

    after(:build) { |u| u.password = 'secret' }
    after(:create) { |u| create_list :good_quote, 2, user: u }
  end
end
