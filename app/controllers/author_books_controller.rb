class AuthorBooksController < ApplicationController
  def index
    # binding.pry
    @author = Author.find(params[:author_id])
    @books = if params[:name] == 'Alphabetical'
               @author.books.order(Arel.sql('lower(name)')) # .order
             else
               @author.books
             end
  end

  def new
    @author = Author.find(params[:author_id])
  end

  def create
    book = Book.create(book_params)
    redirect_to "/authors/#{book.author_id}/books"
  end

  private

  def book_params
    params.permit(:name, :genre, :pages, :fictitious, :author_id)
  end
end
