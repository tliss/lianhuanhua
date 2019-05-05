class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @pages = @book.pages.all # For listing all pages
    @page = @book.pages.new # For form fields
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

    if @book.save
      redirect_to @book
    else
      render 'new'
    end
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
      params.require(:book).permit(:year_published, :book_number)
    end
end