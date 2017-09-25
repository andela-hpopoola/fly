require "rails_helper"

RSpec.describe Flight, type: :model do
  context "when validating associations" do
    it { is_expected.to belong_to(:destination) }
    it { is_expected.to belong_to(:airline) }
    it { is_expected.to belong_to(:airport) }
    it { is_expected.to have_many(:bookings) }
    it { is_expected.to have_many(:passengers) }
  end

  context "when validating fields" do
    it { is_expected.to validate_presence_of(:destination_id) }
    it { is_expected.to validate_presence_of(:available_seats) }
    it { is_expected.to validate_presence_of(:flight_date) }
    it { is_expected.to validate_presence_of(:airline_id) }
    it { is_expected.to validate_presence_of(:airport_id) }
  end
end
