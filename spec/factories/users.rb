FactoryGirl.define do
  factory :user do
    email 'john.smith@myfinance.com'
    password 'my secret password'
    first_name 'John'
    last_name 'Smith'
  end
end
