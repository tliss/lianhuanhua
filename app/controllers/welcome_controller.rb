class WelcomeController < ApplicationController
  def index
  end

  def search
    if params[:search].blank?
      redirect_to root_path, alert: "Please enter a search term"
    else
      @parameter = params[:search].downcase
      @results = Series.all.where('LOWER(title) LIKE ?', "%#{@parameter}%")
      # TODO: Add titles to book and make them searchable
      # @results += Books.all.where()
    end
  end
end
