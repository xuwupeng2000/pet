FactoryGirl.define do
  factory :page do
    url {Faker::Internet.url}
    status_code {200}

    trait :with_tags do
      after(:create) do |page|
        create(:tag, page: page)
      end
    end
  end
end
