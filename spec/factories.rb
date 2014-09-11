FactoryGirl.define do
  factory :user do
    email "JohnDoe@example.com"
    password "12345678"
    password_confirmation "12345678"
  end

  factory :user_pw_invalid, class: User do
    email "JohnDoe@example.com"
    password "12"
    password_confirmation "12"
  end
end
