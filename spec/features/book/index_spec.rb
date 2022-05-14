require 'rails_helper'

RSpec.describe 'The book show page' do
  it 'displays the book title' do
    author = author.create!(name: 'Samantha Moore', living: true)
    book = author.books.create!(name: 'Descencus', pages: 208, genre: 'Thriller', fictitious: true)
    book2 = author.books.create!(title: 'Call Me Maybe', length: 408, play_count: 23)
    visit "/books/#{book.id}"
    # localhost:3000/books/1

    expect(page).to have_content(book.title)
    expect(page).to_not have_content(book2.title)
  end

  it 'displays the name of the author for the book' do
    author = author.create!(name: 'Carly Rae Jepsen')
    book = author.books.create!(title: 'I Really Like You', length: 208, play_count: 123)
    book2 = author.books.create!(title: 'Call Me Maybe', length: 408, play_count: 23)
    visit "/books/#{book.id}"
    save_and_open_page
    expect(page).to have_content(author.name)
  end
end
