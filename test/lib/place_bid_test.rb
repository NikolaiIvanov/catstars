require "test_helper"
require "place_bid"

class PlaceBidTest < MiniTest::Test
  def setup
    @user       = User.create! email: "test@test.com", password: "password"
    @other_user = User.create! email: "test1@test.com", password: "password"
    @cat        = Cat.create! name: "Awesome cat"
    @auction    = Auction.create! value: 100, cat_id: cat.id
  end
  def test_it_places_a_bid
    service = PlaceBid.new(
      value: 101,
      user_id: other_user.id,
      auction_id: auction.id
    )
    service.execute
    assert_equal 101, auction.current_bid
  end

  def test_fails_to_place_same_or_lower_bid
    service = PlaceBid.new(
      value: 99,
      user_id: other_user.id,
      auction_id: auction.id
    )
    refute service.execute, "Bid should not be placed"
  end

  private
  attr_reader :user, :other_user, :cat, :auction
end
