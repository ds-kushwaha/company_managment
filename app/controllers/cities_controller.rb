class CitiesController < ApplicationController

	  def new
	    @city = City.new
	   
	  end

	  def edit
	  	@city = City.find(params[:id])
	  end  

	  def show
		  @city = City.find(params[:id])
	  end

	  def index
	  	@city = City.all
	  end	


	  def create
	    @city = City.new(city_params)
	   # byebug
	    if @city.save
	    redirect_to cities_path
	  else 
	    render 'new'  
	    end
	  end

	  def update
	     @city = City.find(params[:id])
	  	 
	  	if @city.update(city_params)
	  	  redirect_to cities_path
	  	else 
	  	  render 'edit'  
	  	end
	  end			

	  def destroy
	  	@city = City.find(params[:id])
	      @city.destroy
	      redirect_to cities_path
	  end	


  private
    def city_params
      params.require(:city).permit(:city_name, :state_id)
    end
end

