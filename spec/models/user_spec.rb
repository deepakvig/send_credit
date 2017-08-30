require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:entity1)  { FactoryGirl.create(:user) }
  let!(:entity2)  { FactoryGirl.create(:admin) }

  it "should validate presence of email" do
    user = build(:user, email: nil)

    expect(user).not_to be_valid
  end

end
