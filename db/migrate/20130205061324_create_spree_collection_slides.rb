class CreateSpreeCollectionSlides < ActiveRecord::Migration
  def change
    create_table :spree_collection_slides do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
