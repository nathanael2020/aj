class Spree::CollectionSlide < ActiveRecord::Base
  attr_accessible :name, :url
  has_many :item_slides
end
