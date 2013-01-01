# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    author "MyString"
    title "MyString"
    message "MyText"
  end
end
