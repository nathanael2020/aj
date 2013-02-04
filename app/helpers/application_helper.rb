module ApplicationHelper
  def jewelry_sub_categories
    if @jewelry = Spree::Taxon.find_by_name("Jewelry")
      @jewelry.children
    else
      []
    end
  end
end
