class RolesController < ApplicationController

  def new
    @role = Role.new
   
  end

  def edit
  	@role = Role.find(params[:id])
  end  

  def show
	  @role = Role.find(params[:id])
  end

  def index
  	@role = Role.all
  end	


  def create
    @role = Role.new(role_params)
   # byebug
    if @role.save
    redirect_to roles_path
  else 
    render 'new'  
    end
  end

  def destroy
  	@role = Role.find(params[:id])
    @role.destroy
    redirect_to roles_path
  end	

  private
   def role_params
    params.require(:role).permit(:role_name)
   end

end