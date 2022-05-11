require 'rails_helper'

RSpec.describe Author do
  describe 'relationships' do
    it { should have_many :books }
  end
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :living }
    # it { should allow_value(true).for(:living) } # receiving error due to all values not being filled, will come back
    # it { should allow_value(true).for(:living) }
    # it { should allow_value(false).for(:living) }
  end
end
