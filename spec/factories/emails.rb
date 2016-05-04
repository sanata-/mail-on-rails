FactoryGirl.define do
  factory :email do
    login "hello"
    password "123123"
  end

  factory :email_invalid do
    login ""
    password "123123"
  end
end
