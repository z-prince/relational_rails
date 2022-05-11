require 'rails_helper'

RSpec.describe Author do
  describe 'relationships' do
    it { should have_many :books }
  end
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should allow_value(true).for(:foreign) }
    it { should allow_value(false).for(:foreign) }
    it { should validate_presence_of :fleet_count }
  end
end
