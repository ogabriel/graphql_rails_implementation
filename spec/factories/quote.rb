# frozen_string_literal: true

FactoryBot.define do
  factory :good_quote, class: Quote do
    message { Faker::Quote.most_interesting_man_in_the_world }
  end
end
