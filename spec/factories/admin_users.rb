# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_user do
    email "MyString"
    password_digest "MyString"
  end
end
