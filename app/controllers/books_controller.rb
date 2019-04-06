class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @series = Series.find(params[:series_id])
    @book = @series.books.find(params[:id])
  end

  def create
    @series = Series.find(params[:series_id])
    @book = @series.books.create(book_params)
    redirect_to series_path(@series)
  end

  def destroy
    @series = Series.find(params[:series_id])
    @book = @series.books.find(params[:id])
    @book.destroy
    redirect_to series_path(@series)
  end

  private
    def book_params
      params.require(:book).permit(:year_published, :series_number)
    end
end