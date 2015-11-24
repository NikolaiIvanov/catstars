require "place_bid"
class BidsController < ApplicationController
  def create
    service = PlaceBid.new bid_params
    if service.execute
      redirect_to cat_path(params[:cat_id]), notice: "Your bid was placed."
    else
      redirect_to cat_path(params[:cat_id]), notice: "You can't place same or lower bid."
    end
  end

  private
  def bid_params
    params.require(:bid).permit(:value).merge!(
      user_id: current_user.id,
      auction_id: params[:auction_id]
    )
  end
end
