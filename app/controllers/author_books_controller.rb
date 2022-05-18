class AuthorBooksController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @books = @author.books
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
