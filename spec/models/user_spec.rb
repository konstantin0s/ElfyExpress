require 'rails_helper'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end

RSpec.describe User, type: :model do
  describe "validations" do

  end
end
