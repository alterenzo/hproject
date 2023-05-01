# frozen_string_literal: true

FactoryBot.define do
  factory :property_enquiry do
    address { 'Park Lane' }
  end

  trait(:with_comments) do
    after(:create) do |property_enquiry, _|
      create_list(:comment, 2, property_enquiry: property_enquiry)
    end
  end
end
