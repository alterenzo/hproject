FactoryBot.define do
  factory :comment do
    property_enquiry { nil }
    content { "MyText" }
  end
end
