class AuctionsController < ApplicationController
  def create
    cat = Cat.find params[:cat_id]
    auction = Auction.new auction_params.merge! cat_id: cat.id
    auction_val = auction.value.to_i

    if auction.save
      redirect_to cat, notice: "Your bid: #{auction_val} was placed."
    else
      redirect_to cat, alert: "Something went wrong, please try again."
    end
  end

  def auction_params
    params.require(:auction).permit(:value)
  end
end
