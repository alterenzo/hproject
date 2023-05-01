# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    property_enquiry { nil }
    content { 'MyComment' }
    user { FactoryBot.create(:user) }
  end
end
