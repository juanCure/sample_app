# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    mark "MyString"
    model "MyString"
    price 1.5
    description "MyText"
    type 1
    image "MyString"
  end
end
