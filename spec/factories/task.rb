FactoryBot.define do
  factory :task do
    status { "work" }
    content { "create r2-oas use committee sample" }
    description { "hoge fuga bar" }
  end
end
