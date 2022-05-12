require 'rails_helper'

RSpec.describe Book do
  describe 'relationships' do
    it { should belong_to :author }
  end
  describe 'validations' do
  end
end
