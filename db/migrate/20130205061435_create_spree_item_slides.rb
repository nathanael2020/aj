class CreateSpreeItemSlides < ActiveRecord::Migration
  def change
    create_table :spree_item_slides do |t|
      t.string :name
      t.text :body
      t.string :link_url
      t.boolean :published
      t.string :image_file_name
      t.string :image_content_type
      t.string :image_file_size
      t.datetime :image_updated_at
      t.integer :position, :null => false, :default => 0
      t.integer :spree_collection_slide_id
      t.timestamps
    end
    add_index :spree_item_slides, :spree_collection_slide_id
  end
end
