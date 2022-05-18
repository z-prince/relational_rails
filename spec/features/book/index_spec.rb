require 'rails_helper'

RSpec.describe 'The book index page' do
  xit 'displays the book title' do
    author = Author.create!(name: 'Samantha Moore', living: true, pullitzer_prizes: 123)
    book1 = Book.create!(name: 'Descencus', pages: 208, genre: 'Thriller', fictitious: true, author_id: author.id)
    book2 = Book.create!(name: 'Help', pages: 463, genre: 'Philosophy', fictitious: false, author_id: author.id)
    visit "/books/#{book.id}"
    # localhost:3000/books/1

    expect(page).to have_content(book.title)
    expect(page).to_not have_content(book2.title)
  end

  xit 'displays the name of the Author for the book' do
    author = Author.create!(name: 'Samantha Moore', living: true, pullitzer_prizes: 123)
    book1 = Book.create!(name: 'Descencus', pages: 208, genre: 'Thriller', fictitious: true, author_id: author.id)
    book2 = Book.create!(name: 'Help', pages: 463, genre: 'Philosophy', fictitious: false, author_id: author.id)
    save_and_open_page
    expect(page).to have_content(Author.name)
  end

  it 'displays the name of the Author for the book' do
    author = Author.create!(name: 'Samantha Moore', living: true, pullitzer_prizes: 123)
    book1 = Book.create!(name: 'Descencus', pages: 208, genre: 'Thriller', fictitious: true, author_id: author.id)
    book2 = Book.create!(name: 'Help', pages: 463, genre: 'Philosophy', fictitious: false, author_id: author.id)

    visit '/books'

    expect(page).to have_content(book1.name)
    expect(page).to_not have_content(book2.name)
  end
end
