require "rails_helper"

RSpec.describe Passenger, type: :model do
  context "when validating associations" do
    it { is_expected.to belong_to(:booking) }
  end

  context "when validating fields" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:booking_id) }
  end
end
