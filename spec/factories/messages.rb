# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    author "MyString"
    message "MyText"
    topic nil
    image ""
  end
end
