require 'rails_helper'

RSpec.describe Message, type: :model do
  it 'is valid with a content, user_id' do
    message = FactoryBot.build(:message)
    expect(message).to be_valid
  end
  it 'is invalid without a content' do
    message = FactoryBot.build(:message, content: nil)
    message.valid?
    expect(message.errors[:content]).to include("can't be blank")
  end
end
