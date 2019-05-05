class SeriesController < ApplicationController
  def index
    @series_all = Series.all  # For listing all series
    @series = Series.new      # For form fields
  end

  def show
    @series = Series.find(params[:id])
    @books = @series.books.all # For listing all books
    @book = @series.books.new # For form fields
  end

  def new
    @series = Series.new
  end

  def edit
    @series = Series.find(params[:id])
  end

  def create
    @series = Series.new(series_params)

    if @series.save
      redirect_to @series
    else
      render 'new'
      # redirect_back(fallback_location: root_path)
    end
  end

  def update
    @series = Series.find(params[:id])

    if @series.update(series_params)
      redirect_to @series
    else
      render 'edit'
    end
  end

  def destroy
    @series = Series.find(params[:id])
    @series.destroy

    redirect_to series_index_path
  end

  private
    def series_params
      params.require(:series).permit(:title)
    end
end