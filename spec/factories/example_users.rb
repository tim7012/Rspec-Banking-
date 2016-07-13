FactoryGirl.define do
  factory :new_example_user, class: ExampleUser do
    name      Faker::Name.name
    email     Faker::Internet.email
    password  Faker::Internet.password
  end
end
