class TaxonPageConstraints
  def self.matches?(request)
    begin
      request_before_params = request.env['PATH_INFO'].split("?")[0]
    rescue Exception => e
      request_before_params = request.env['PATH_INFO']
    end

    if jewelry = Spree::Taxon.find_by_name("Jewelry")
      jewelry.children.map{ |v| "/#{v.name_to_link}" }.detect{ |j| j == request_before_params }.present?
    else
      false
    end

  end
end
