FactoryBot.define do
  factory :note do
    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraphs }
  end
end
