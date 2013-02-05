module ApplicationHelper
  def jewelry_sub_categories
    if @jewelry = Spree::Taxon.find_by_name("Jewelry")
      @jewelry.children
    else
      []
    end
  end
  def list_jewelry_thumbnails
    if @jewelry = Spree::Taxon.find_by_name("Jewelry")
      @jewelry.children.select{ |j| j.taxon_images.any?{ |v| v.icon.present? }}
    else
      []
    end
  end
end
