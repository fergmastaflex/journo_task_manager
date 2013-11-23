# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pitch do
    headline "MyString"
    user_id 1
    description "MyText"
    complete_by "2013-11-23 11:02:04"
  end
end
