class Spree::Admin::TaxonImagesController < Spree::Admin::ResourceController
  respond_to :html
  before_filter :load_data

  def index
    @taxon_images = @taxon.taxon_images
  end
  def create
    @taxon_image = @taxon.taxon_images.new(params[:taxon_image])
    if @taxon_image.save
      redirect_to admin_taxonomy_taxon_taxon_images_path(@taxonomy, @taxon)
    else
      respond_with(@taxon_image)
    end
  end
  def update
    @taxon_image = @taxon.taxon_images.find(params[:id])
    if @taxon_image.update_attributes(params[:taxon_image])
      redirect_to admin_taxonomy_taxon_taxon_images_path(@taxonomy, @taxon)
    else
      respond_with(@taxon)
    end
  end

  def destroy
    @taxon_image = @taxon.taxon_images.find(params[:id])

    if @taxon_image.destroy
      redirect_to admin_taxonomy_taxon_taxon_images_path(@taxonomy, @taxon)
    else
      redirect_to admin_taxonomy_taxon_taxon_images_path(@taxonomy, @taxon)
    end
  end

  private
  def load_data
    @taxonomy = Spree::Taxonomy.find(params[:taxonomy_id])
    @taxon = Spree::Taxon.find(params[:taxon_id])

  end
end
