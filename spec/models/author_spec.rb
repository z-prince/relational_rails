require 'rails_helper'

RSpec.describe Author type: :model do
  let!(:author1) { Author.create!(name: 'Susan', living: false, pullitzer_prizes: 123, created_at: 8.seconds.ago) }
  let!(:author2) { Author.create!(name: 'James', living: false, pullitzer_prizes: 153, created_at: 9.seconds.ago) }
  let!(:author3) { Author.create!(name: 'Gloop', living: false, pullitzer_prizes: 97, created_at: 10.seconds.ago) }

  describe 'relationships' do
    it { should have_many :books }
  end
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :living }
  end

  describe 'behaviors' do
    it 'sorts parents by earliest time created' do
      author1 = Author.create!(name: 'Susan', living: false, pullitzer_prizes: 123, created_at: 8.seconds.ago)
      author2 =  Author.create!(name: 'James', living: false, pullitzer_prizes: 153, created_at: 9.seconds.ago)
      author3 =  Author.create!(name: 'Gloop', living: false, pullitzer_prizes: 97, created_at: 10.seconds.ago)
      expect(Author.short_time.to_a).to eq(author1, author2, author3)
    end
  end
end
