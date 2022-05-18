class AuthorsController < ApplicationController
  def index
    @authors = Author.short_time
  end

  def show
    @author = Author.find(params[:id])
  end

  def new; end

  def create; end

  private

  def author_params
    params.permit(:name, :living, :pullitzer_prizes)
  end
end
