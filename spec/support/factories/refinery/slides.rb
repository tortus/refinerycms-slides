
FactoryGirl.define do
  factory :slide, :class => Refinery::Slides::Slide do
    sequence(:title) { |n| "refinery#{n}" }
    live_at { Time.now - 1.hour }
  end
end

