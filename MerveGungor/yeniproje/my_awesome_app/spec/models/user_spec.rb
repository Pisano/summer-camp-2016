
require 'rails_helper'

RSpec.describe User, type: :model do
 it "has a correct full name" do
    subject.first_name = "Leonardo"
    subject.last_name = "Pisano"

    expect(subject.full_name).to eq("Leonardo Pisano")
  end
end
