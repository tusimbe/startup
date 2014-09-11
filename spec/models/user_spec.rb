require 'rails_helper'

RSpec.describe User, :type => :model do
  before do
    @user = build(:user)
  end

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:has_role?) }

  it { should be_valid }
  it { should_not be_has_role(:admin) }

  describe "password length less than min" do
    let(:user_invalid) { build(:user_pw_invalid) }

    it "should not be invalid" do
      user_invalid.should_not be_valid
    end
  end
end
