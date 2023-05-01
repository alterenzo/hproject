FactoryBot.define do
  factory :event_log do
    property_enquiry { nil }
    from_state { "MyString" }
    to_state { "MyString" }
  end
end
