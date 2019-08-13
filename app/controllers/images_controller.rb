class ImagesController < ApplicationController

	  def new
	    @image = Image.new
	   
	  end

	  def edit
	  	@image = Image.find(params[:id])
	  end  

	  def show
		  @image = Image.find(params[:id])
	  end

	  def index
	  	@images = Image.all
	  end	


	  def create	  	
	    @image = Image.new(image_params)
	    if @image.save
	    redirect_to images_path
	  else 
	    render 'new'  
	    end
	  end

	  def destroy
	  	@image = Image.find(params[:id])
	    @image.destroy
	    redirect_to images_path
	  end	

	  private
	   def image_params
	    params.require(:image).permit(:image_name, :company_id)
	   end
end
