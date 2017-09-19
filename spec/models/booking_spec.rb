require "rails_helper"

RSpec.describe Booking, type: :model do
  context "when validating associations" do
    it { is_expected.to belong_to(:passenger) }
    it { is_expected.to belong_to(:flight) }
  end
end
