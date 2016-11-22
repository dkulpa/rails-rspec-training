require 'rails_helper'

RSpec.describe Album do
  subject { FactoryGirl.build(:album) }
  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid with title longer than 100 symbols' do
    subject.title = FFaker::Lorem.characters(character_count = 101)
    expect(subject).not_to be_valid
  end

  it 'is valid with proper data' do
    expect(subject).to be_valid
  end
end
