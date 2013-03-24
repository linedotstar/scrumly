# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    title "MyString"
    story_id 1
    estimate 1
    completed_at "2013-03-24 13:19:43"
  end
end
