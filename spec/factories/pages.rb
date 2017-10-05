FactoryGirl.define do
  factory :page do
    url {Faker::Internet.url}
    status_code {200}
  end
end
