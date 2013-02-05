Spree::Taxon.class_eval do
  def name_to_link
    name.downcase.gsub(/ |\/|\./, '_')
  end
end
