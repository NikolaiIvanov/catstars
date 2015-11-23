require 'uri'
class Cat < ActiveRecord::Base
  belongs_to :user
  has_one :auction
  validates :name, length: { minimum: 3 }
  validates :image, url: true, presence: true


  def has_auction?
    auction.present?
  end
end
