require "rails_helper"

RSpec.describe Passenger, type: :model do
  context "when validating associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:bookings) }
    it { is_expected.to have_many(:flights) }
  end

  context "when validating fields" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to validate_presence_of(:dob) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:user_id) }
  end
end
