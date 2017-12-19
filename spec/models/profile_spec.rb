require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of (:first_name) }
    it { is_expected.to validate_presence_of (:last_name) }
    it { is_expected.to validate_presence_of (:street) }
    it { is_expected.to validate_presence_of (:postal_code) }
    it { is_expected.to validate_presence_of (:city) }
    it { is_expected.to validate_presence_of (:user) }
  end
end
