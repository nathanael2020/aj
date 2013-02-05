class Spree::TaxonImage < ActiveRecord::Base
  attr_accessible :name, :taxon_id, :icon, :image

  has_attached_file :icon,
  :styles => { :mini => '47x47>', :normal => '128x128>' },
  :default_style => :mini,
  :url => '/spree/taxons/icons/:id/:style/:basename.:extension',
  :path => ':rails_root/public/spree/taxons/icons/:id/:style/:basename.:extension',
  :default_url => '/assets/default_taxon.png'

  has_attached_file :image,
  :url => '/spree/taxons/images/:id/:style/:basename.:extension',
  :path => ':rails_root/public/spree/taxons/images/:id/:style/:basename.:extension',
  :default_url => '/assets/default_taxon.png'

  belongs_to :taxon, :class_name => "Spree::Taxon"

end
