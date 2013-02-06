class TaxonPagesController < Spree::StoreController
  def show

    if jewelry = Spree::Taxon.find_by_name("Jewelry")
      @taxon_page = jewelry.children.detect{ |j| j.name_to_link == params[:taxon_name] }
    end
    unless @taxon_page
      redirect_to root_path and return
    end

    render :layout => "spree_application"
  end
end
