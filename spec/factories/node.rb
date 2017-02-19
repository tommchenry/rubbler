FactoryGirl.define do
  factory :node do
    parent_id nil
    name { Faker::TwinPeaks.location }
    text { Faker::TwinPeaks.quote }
    img_url { Faker::Placeholdit.image }
  end
end
