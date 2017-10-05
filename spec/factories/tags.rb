FactoryGirl.define do
  factory :tag do
    tag_type {'a'}
    tag_content {Faker::Lorem.sentence}
  end
end
