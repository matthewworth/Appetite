class PubsController < ApplicationController
  def index
  	if params{:search}.present? and params[:search][:q].present?
      flash[:success] = "Cafes near #{params[:search][:q]}"
      @pubs = Pubs.near(params[:search][:q])
    else
      @pubs = Pub.all
    end
  end

  def new
  	@pub = Pub.new
  end

  def create
  	@pub = Pub.new(pub_params)
    pub.save
  	if @pub.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end


  private
  def pub_params
		params.require(:pub).permit(:name, :address, :latitude, :longitude)
	end
end
