require "rails_helper"

RSpec.describe Booking, type: :model do
  context "when validating associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:flight) }
    it { is_expected.to have_many(:passengers) }
  end
end
