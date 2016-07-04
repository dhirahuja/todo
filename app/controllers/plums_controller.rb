class PlumsController < ApplicationController
    before_filter :authenticate_user!

	 def index
    @plums = Plum.all
  end
 
  def show
    @plum = Plum.find(params[:id])
  end
 
  def new
    @plum = Plum.new
  end
 
  def edit
    @plum = Plum.find(params[:id])
  end
 
  def create
    @plum = Plum.new(plum_params)
 
    if @plum.save
      redirect_to @plum
    else
      render 'new'
    end
  end
 
  def update
    @plum = Plum.find(params[:id])
 
    if @plum.update(plum_params)
      redirect_to @plum
    else
      render 'edit'
    end
  end
 
  def destroy
    @plum = Plum.find(params[:id])
    @plum.destroy
 
    redirect_to plums_path
  end
 
  private
    def plum_params
      params.require(:plum).permit(:name, :address, :city, :country, :phone)
    end
end
