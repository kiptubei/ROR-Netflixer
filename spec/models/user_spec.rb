require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new(Username: 'Mark', Fullname: 'Mark James') }

  describe 'validations' do
    it { should validate_presence_of(:Username) }
  end

  describe 'associations' do
    it { should have_many(:opinions) }
  end

  context 'name should be valid' do
    it 'should require a name' do
      expect(FactoryBot.build(:user, Username: '')).not_to be_valid
    end

    it 'should accept letters in name' do
      expect(FactoryBot.build(:user, Username: 'Mark', Fullname: 'Mark James')).to be_valid
    end
  end
end
