class AuthorsController < ApplicationController
  def index
    @authors = Author.short_time
  end

  def show
    @author = Author.find(params[:id])
    @id = @author.id
  end
end
