class Spree::CustomAsset < ActiveRecord::Base
  has_attached_file :image
  attr_accessible :name, :image
end
