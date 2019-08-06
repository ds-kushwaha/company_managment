class CompaniesController < ApplicationController
	  def new
	    @company = Company.new
	   
	  end

	  def edit
	  	@company = Company.find(params[:id])
	  end  

	  def show
		  @company = Company.find(params[:id])
	  end

	  def index
	  	@company = Company.all
	  end	


	  def create
	    @company = Company.new(company_params)
	   # byebug
	    if @company.save
	    redirect_to companies_path
	  else 
	    render 'new'  
	    end
	  end

	  def update
	     @company = Company.find(params[:id])
	  	 
	  	if @company.update(company_params)
	  	  redirect_to companies_path
	  	else 
	  	  render 'edit'  
	  	end
	  end			

	  def destroy
	  	@company = Company.find(params[:id])
	      @company.destroy
	      redirect_to companies_path
	  end	


  private
    def company_params
      params.require(:company).permit(:company_name, :city_id, :state_id, :country_id)
    end
end


