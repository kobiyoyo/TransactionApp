# frozen_string_literal: true

FactoryBot.define do
  factory :group do
    name { 'MyString' }
    icon { 'MyString' }
    user { nil }
  end
end
