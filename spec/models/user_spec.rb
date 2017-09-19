require "rails_helper"

RSpec.describe User, type: :model do
  context "when validating associations" do
    it { is_expected.to have_many(:passengers) }
  end

  context "when validating fields" do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end
end
