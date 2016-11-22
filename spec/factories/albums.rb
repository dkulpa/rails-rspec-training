FactoryGirl.define do
  factory :album do
    title { FFaker::Music.album }
  end
end
