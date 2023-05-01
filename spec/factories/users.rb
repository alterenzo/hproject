FactoryBot.define do
  factory :user do
    email { 'asd@asd.com'}
    password { '123123' }
    password_confirmation { '123123' }
  end
end
