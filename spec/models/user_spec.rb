require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of (:email) }
    it { is_expected.to validate_presence_of (:password) }
  end

  describe "association with profile" do
    let(:user) { create :user }
    let!(:profile) { create :profile, user: user}

    it "has a profile" do
      user.profile = build(:profile)

      expect(profile.user).to eq(user)
    end

    it "deletes associated profile" do
      expect { user.destroy }.to change(Profile, :count).by(-1)
    end
  end

  describe "association with purchase" do
    let(:user) { create :user }
    let!(:purchase) { create :purchase, user: user}

    it "has many purchases" do
      purchase1 = user.purchases.new
      purchase2 = user.purchases.new

      expect(user.purchases).to include(purchase1)
      expect(user.purchases).to include(purchase2)
    end

    it "deletes associated purchases" do

    end

  end
end
