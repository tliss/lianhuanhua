class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

end
