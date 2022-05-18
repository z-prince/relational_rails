require 'rails_helper'

RSpec.describe 'The book show page' do
  it 'sorts children alphabetically' do
    author = Author.create!(name: 'Samantha Moore', living: true, pullitzer_prizes: 123)
    book1 = Book.create!(name: 'Descencus', pages: 208, genre: 'Thriller', fictitious: true, author_id: author.id)
    book2 = Book.create!(name: 'Help', pages: 463, genre: 'Philosophy', fictitious: false, author_id: author.id)
    book3 = Book.create!(name: 'Charvese', pages: 134, genre: 'Adventure', fictitious: false, author_id: author.id)

    visit "/authors/#{author.id}/books"

    click_link 'Sort Alphabetically'

    expect(current_path).to eq "/authors/#{author.id}/books/"

    expect(book3.name).to appear_before(book1.name)

    expect(book1.name).to appear_before(book2.name)
  end
end
