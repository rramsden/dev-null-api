FactoryGirl.define do
  factory :storage do
    sequence(:key) {|n| "key#{n}"}
    value "value"
  end
end
