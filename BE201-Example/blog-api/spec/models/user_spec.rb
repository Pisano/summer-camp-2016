require 'rails_helper'

RSpec.describe User, type: :model do

  it "has a correct full name" do
    subject.first_name = "Leo"
    subject.last_name = "Pisano"

    expect(subject.full_name).to eq("Leo Pisano")
  end

  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_uniqueness_of(:token).allow_blank }

  it "generates a token for himself" do
    user = FactoryGirl.create(:user)
    user.generate_token!

    expect(user.token).not_to be nil
  end


end
