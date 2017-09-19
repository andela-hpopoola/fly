require "rails_helper"

RSpec.describe Location, type: :model do
  context "when validating associations" do
    it { is_expected.to have_many(:airports) }
  end

  context "when validating fields" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
