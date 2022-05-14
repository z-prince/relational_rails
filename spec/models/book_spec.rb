require 'rails_helper'

RSpec.describe Book do
  describe 'relationships' do
    it { should belong_to :author }
  end
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :fictitious }
    it { should validate_presence_of :genre }
    it { should validate_presence_of :author_id }
  end
end
