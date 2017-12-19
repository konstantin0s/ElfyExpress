require 'rails_helper'

RSpec.describe Purchase, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of (:bought) }
    it { is_expected.to validate_presence_of (:total_price) }
    it { is_expected.to validate_presence_of (:total_amount) }
    it { is_expected.to validate_presence_of (:user) }
  end
end
