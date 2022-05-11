class AuthorsController < ApplicationController
  def index
    binding.pry
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end
end
