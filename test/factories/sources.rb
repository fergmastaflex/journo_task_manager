# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :source, :class => 'Sources' do
    name "MyString"
  end
end
