require 'rails_helper'

RSpec.describe 'The book show page' do
  # As a user,
  # when I visit '/books/1'
  # I see each book's title and author
  # And I do not see any other books in my database
  it 'displays the book title' do
    author = Author.create!(name: 'Fleppy Caliper')
    book = author.books.create!(name: 'Why do Phones Ring?', pages: 208, genre: 'Philosophy', fictitious: false)
    book2 = author.books.create!(name: 'Deeds of the Dishwasher', pages: 408, genre: 'Horror', fictitious: true)
    visit "/books/#{book.id}"
    # localhost:3000/books/1

    expect(page).to have_content(book.title)
    expect(page).to_not have_content(book2.title)
  end

  it 'displays the name of the author for the book' do
    author = Author.create!(name: 'Fleppy Caliper')
    book = author.books.create!(name: 'Why do Phones Ring?', pages: 208, genre: 'Philosophy', fictitious: false)
    book2 = author.books.create!(name: 'Deeds of the Dishwasher', pages: 408, genre: 'Horror', fictitious: true)
    visit "/books/#{book.id}"
    save_and_open_page
    expect(page).to have_content(author.name)
  end
end
