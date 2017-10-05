require 'rails_helper'

RSpec.describe Tag, type: :model do
  context 'associations' do
    it { is_expected.to belongs_to(:page) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:tag_typel) }
  end
end
