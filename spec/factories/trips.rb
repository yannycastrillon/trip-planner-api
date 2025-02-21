FactoryBot.define do
  factory :trip do
    name { "Santorini" }
    budget_min { 1500.00 }
    budget_max { 4000.00 }
    max_duration { 7 }
    preferred_season { "summer" }
    status { "draft" }
  end
end
