class Spree::ItemSlide < ActiveRecord::Base
  attr_accessible :body, :image_content_type, :image_file_name, :image_file_size, :image_updated_at, :link_url, :name, :position, :published
  has_attached_file :image
  scope :published, where(:published => true)
  belongs_to :collection_slide
end
