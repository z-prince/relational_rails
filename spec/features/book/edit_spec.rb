require 'rails_helper'

RSpec.describe 'book edit page' do
  it 'updates a new book' do
    author1 = Author.create!(name: 'Susan', living: false, pullitzer_prizes: 123)
    book1 = Book.create!(name: 'The Hard One', genre: 'Young Adult', pages: 254, fictitious: true,
                         author_id: author1.id)

    visit "books/#{book1.id}"
    click_link('Update Book')

    expect(current_path).to eq("/books/#{book1.id}/edit")

    fill_in('Name', with: 'Cobblestone')

    fill_in('Pages', with: 200)

    fill_in('Genre', with: 'Horror')

    fill_in('Fictitious', with: true)

    click_button 'Update Book'

    expect(current_path).to eq "/books/#{book1.id}"
    expect(page).to have_content('Cobblestone')
    expect(page).to have_content('Horror')
    expect(page).to have_content(200)
    expect(page).to have_content('true')
  end
end
