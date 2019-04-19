class WelcomeController < ApplicationController
  def index
  end

  def search
    if params[:search].blank?
      redirect_to root_path, alert: "HEYA"
    else
      @parameter = params[:search].downcase
      @results = Series.all.where('LOWER(title) LIKE ?', "%#{@parameter}%")
    end
  end
end
