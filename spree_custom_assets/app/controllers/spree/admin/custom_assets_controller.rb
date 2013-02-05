class Spree::Admin::CustomAssetsController < Spree::Admin::ResourceController
  respond_to :html
  def index
    @custom_assets = Spree::CustomAsset.all
  end
end
