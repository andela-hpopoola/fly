require "rails_helper"

RSpec.describe Flight, type: :model do
  context "when validating associations" do
    it { is_expected.to belong_to(:to) }
    it { is_expected.to belong_to(:from) }
    it { is_expected.to belong_to(:airport) }
    it { is_expected.to have_many(:bookings) }
    it { is_expected.to have_many(:passengers) }
  end

  context "when validating fields" do
    it { is_expected.to validate_presence_of(:from_id) }
    it { is_expected.to validate_presence_of(:to_id) }
    it { is_expected.to validate_presence_of(:no_of_passengers) }
    it { is_expected.to validate_presence_of(:flight_date) }
    it { is_expected.to validate_presence_of(:airport_id) }
  end
end
