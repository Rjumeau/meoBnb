class FlatsController < ApplicationController
  def new
    @flat = Flat.new
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :price, :address)
  end
end
