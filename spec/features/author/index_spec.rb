require 'rails_helper'

RSpec.describe 'The author index page' do
  it 'has links to update authors' do
    author1 = Author.create!(name: 'Samantha Moore', living: true, pullitzer_prizes: 123)
    author2 = Author.create!(name: 'Janis Jalokie', living: true, pullitzer_prizes: 312)
    author3 = Author.create!(name: 'Galia Kurvinsky', living: false, pullitzer_prizes: 938)

    visit '/authors/'

    click_link('Update Samantha Moore')

    expect(current_path).to eq("/authors/#{author1.id}/edit")

    visit '/authors/'

    click_link('Update Janis Jalokie')

    expect(current_path).to eq("/authors/#{author2.id}/edit")

    visit '/authors/'

    click_link('Update Galia Kurvinsky')

    expect(current_path).to eq("/authors/#{author3.id}/edit")
  end
end
