require 'rails_helper'

RSpec.describe User, type: :model do
  let (:user) { builder(:user) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_confirmation_of(:password) }
  it { is_expected.to allow_value('marcosaurelio.rn@gmail.com').for(:email) }
end
