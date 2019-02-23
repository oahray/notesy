FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { "foo@bar.com" }
    password { "foobar" }
    admin { false }

    factory :admin do
      admin { true }
    end
  end
end
