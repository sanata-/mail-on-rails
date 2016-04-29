FactoryGirl.define do
  factory :user do
    name "MyString"
    password "MyString"
  end

  factory :user_invalid do
    name "MyString"
    password "123"
  end
end
