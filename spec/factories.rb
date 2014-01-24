FactoryGirl.define do
  factory :user_joe, class: User do
    email 'joe@example.com'
    password 'iv1vfv3 25fv323'
  end

  factory :user_jane, class: User do
    email 'jane@example.com'
    password 'buio1vwteav tu'
  end
end
