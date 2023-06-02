class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.owner = current_user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :description, :price, :address, :photo)
  end
end
