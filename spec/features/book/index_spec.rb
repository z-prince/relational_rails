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

  xit 'display only true boolean books' do
    author = Author.create!(name: 'Samantha Moore', living: true, pullitzer_prizes: 123)
    book1 = Book.create!(name: 'Descencus', pages: 208, genre: 'Thriller', fictitious: true, author_id: author.id)
    book2 = Book.create!(name: 'Help', pages: 463, genre: 'Philosophy', fictitious: false, author_id: author.id)

    visit '/books'

    expect(page).to have_content(book1.name)
    expect(page).to_not have_content(book2.name)
  end

  it 'has links to update books' do
    author1 = Author.create!(name: 'Samantha Moore', living: true, pullitzer_prizes: 123)
    author2 = Author.create!(name: 'Janis Jalokie', living: true, pullitzer_prizes: 312)
    author3 = Author.create!(name: 'Galia Kurvinsky', living: false, pullitzer_prizes: 938)
    book1 = Book.create!(name: 'Descencus', pages: 208, genre: 'Thriller', fictitious: true, author_id: author1.id)
    book2 = Book.create!(name: 'Help', pages: 463, genre: 'Philosophy', fictitious: false, author_id: author1.id)
    book3 = Book.create!(name: 'Folly', pages: 281, genre: 'Thriller', fictitious: true, author_id: author2.id)
    book4 = Book.create!(name: 'Ascendance', pages: 192, genre: 'Self Help', fictitious: true, author_id: author2.id)
    book5 = Book.create!(name: 'Wired', pages: 401, genre: 'Mystery', fictitious: false, author_id: author3.id)
    book6 = Book.create!(name: 'Sabotage', pages: 192, genre: 'Mystery', fictitious: false, author_id: author3.id)

    visit '/books/'

    click_link('Update Help')

    expect(current_path).to eq("/books/#{book2.id}/edit")

    visit '/books/'

    click_link('Update Ascendance')

    expect(current_path).to eq("/books/#{book4.id}/edit")

    visit "/authors/#{author1.id}/books"

    click_link('Update Descensus')

    expect(current_path).to eq("/books/#{book1.id}/edit")
  end
end
