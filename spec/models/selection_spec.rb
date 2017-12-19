require 'rails_helper'

RSpec.describe Selection, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of (:price) }
    it { is_expected.to validate_presence_of (:total_price) }
    it { is_expected.to validate_presence_of (:amount) }
    it { is_expected.to validate_presence_of (:product) }
    it { is_expected.to validate_presence_of (:purchase) }
  end
end
