require 'rails_helper'

RSpec.describe 'The author_books new page' do
  it 'redirects user to new page' do
    author1 = Author.create!(name: 'Susan', living: false, pullitzer_prizes: 123, created_at: 8.seconds.ago)

    visit "/authors/#{author1.id}/books"

    click_link 'Create Book'

    expect(current_path).to eq "/authors/#{author1.id}/books/new"
  end

  it 'creates a new book' do
    author1 = Author.create!(name: 'Susan', living: false, pullitzer_prizes: 123, created_at: 8.seconds.ago)
    visit "/authors/#{author1.id}/books/new"

    fill_in('Name', with: 'Cobblestone')

    fill_in('Pages', with: 200)

    fill_in('Genre', with: 'Horror')

    fill_in('Fictitious', with: true)

    click_button 'Create Book'

    expect(current_path).to eq "/authors/#{author1.id}/books"
    expect(page).to have_content('Cobblestone')
    expect(page).to have_content('Horror')
    expect(page).to have_content(200)
    expect(page).to have_content('true')
  end
end
