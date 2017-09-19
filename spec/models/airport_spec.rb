require "rails_helper"

RSpec.describe Airport, type: :model do
  context "when validating associations" do
    it { is_expected.to belong_to(:location) }
    it { is_expected.to have_many(:flights) }
  end

  context "when validating fields" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_presence_of(:location_id) }
  end
end
