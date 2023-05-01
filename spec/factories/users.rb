# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password { '123123' }
    password_confirmation { '123123' }
  end
end
