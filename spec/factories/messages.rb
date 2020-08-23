FactoryBot.define do
  factory :message do
    content { 'sample content' }
    user_id { 1 }
  end
end
