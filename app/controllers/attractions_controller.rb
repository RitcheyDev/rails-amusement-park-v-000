class AttractionsController < ApplicationController
  def new
  end

  def index
    
  	@attractions = Attraction.all
  end

  def show
  	@attraction = Attraction.find(params[:id])
  end

  def new
  	@attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(attraction_params)
    @attraction.save

    redirect_to attraction_path(@attraction)
  end

   private
    def attraction_params
      params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
    end

     

end
