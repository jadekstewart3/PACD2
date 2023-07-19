FactoryBot.define do
  factory :item do
    name { "MyString" }
    quantity { 1 }
    note { "MyText" }
    assignee { "MyString" }
  end
end
