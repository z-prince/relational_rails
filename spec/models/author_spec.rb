require 'rails_helper'

RSpec.describe Author do
  describe 'relationships' do
    it { should have_many :books }
  end
  describe 'validations' do
  end
end
