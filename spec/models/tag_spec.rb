require 'rails_helper'

RSpec.describe Tag, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:page) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:tag_type) }
  end
end
