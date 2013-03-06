
FactoryGirl.define do
  factory :greencoconut, :class => Refinery::Greencoconuts::Greencoconut do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

