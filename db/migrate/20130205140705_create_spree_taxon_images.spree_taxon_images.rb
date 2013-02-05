# This migration comes from spree_taxon_images (originally 20130205140226)
class CreateSpreeTaxonImages < ActiveRecord::Migration
  def change
    create_table :spree_taxon_images do |t|
      t.string :name
      t.integer :taxon_id

      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.string :icon_file_name
      t.string :icon_content_type
      t.integer :icon_file_size
      t.datetime :icon_updated_at

      t.timestamps
    end
    add_index :spree_taxon_images, :taxon_id

  end
end
