class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @author = Author.find(params[:id])
  end
end
