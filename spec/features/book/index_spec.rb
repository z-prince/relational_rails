require 'rails_helper'

RSpec.describe 'The book index page' do
  xit 'displays the book title' do
    author = author.create!(name: 'Samantha Moore', living: true)
    book = author.books.create!(name: 'Descencus', pages: 208, genre: 'Thriller', fictitious: true)
    book2 = author.books.create!(title: 'Call Me Maybe', length: 408, play_count: 23)
    visit "/books/#{book.id}"
    # localhost:3000/books/1

    expect(page).to have_content(book.title)
    expect(page).to_not have_content(book2.title)
  end

  xit 'displays the name of the author for the book' do
    author = author.create!(name: 'Samantha Moore', living: true)
    book = author.books.create!(name: 'Descencus', pages: 208, genre: 'Thriller', fictitious: true)
    book2 = author.books.create!(name: 'Help', pages: 463, genre: 'Philosophy', fictitious: false)
    visit "/books/#{book.id}"
    save_and_open_page
    expect(page).to have_content(author.name)
  end

  it 'displays the name of the author for the book' do
    author = author.create!(name: 'Samantha Moore', living: true)
    book1 = author.books.create!(name: 'Descencus', pages: 208, genre: 'Thriller', fictitious: true)
    book2 = author.books.create!(name: 'Help', pages: 463, genre: 'Philosophy', fictitious: false)

    visit '/books'

    expect(page).to have_content(book1.name)
    expect(page).to_not have_content(book2.name)
  end
end
