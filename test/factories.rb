FactoryBot.define do
  factory :date, class: Spina::Date do
    content Date.new
  end
  factory :date_time, class: Spina::DateTime do
    content DateTime.new
  end
end
