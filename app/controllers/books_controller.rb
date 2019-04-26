class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @series = Series.find(params[:series_id])
    @book = @series.books.new
  end

  def edit
    @book = Book.find(params[:id])
    @series = @book.series
  end

  def create
    @series = Series.find(params[:series_id])
    @book = @series.books.create(book_params)
    redirect_to series_path(@series)
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book.series
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to series_path(@book.series)
  end

  private
    def book_params
      params.require(:book).permit(:year_published, :series_number)
    end
end