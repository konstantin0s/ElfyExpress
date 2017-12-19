require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of (:name) }
    it { is_expected.to validate_presence_of (:description) }
    it { is_expected.to validate_presence_of (:categories) }
    it { is_expected.to validate_presence_of (:image_url) }
    it { is_expected.to validate_presence_of (:price) }
  end
end
