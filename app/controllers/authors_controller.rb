class AuthorsController < ApplicationController
  def index
    @authors = Author.short_time
  end

  def show
    @author = Author.find(params[:id])
  end

  def new; end
end
