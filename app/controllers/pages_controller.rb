class PagesController < ApplicationController
  def index
    @pages = Pages.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @book = Book.find(params[:book_id])
    @page = @book.pages.new
  end

  def edit
    @page = Page.find(params[:id])
    @book = @page.book
  end

  def create
    @book = Book.find(params[:book_id])
    @page = @book.pages.create(page_params)

    if @page.save
      redirect_to @page
    else
      render 'new'
    end
  end

  def update

  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to book_path(@page.book)
  end

  private
  def page_params
    params.require(:page).permit(:picture, :page_number, :english, :pinyin, :chinese)
  end
end
