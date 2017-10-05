require 'rails_helper'

RSpec.describe Page, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:tags) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:url) }
    it { is_expected.to validate_presence_of(:status_code) }
  end
end
