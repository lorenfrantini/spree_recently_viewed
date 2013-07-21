Spree::ProductsController.class_eval do
      
  after_filter :recently_viewed, only: :show

  def recently_viewed
    item = @product.class.name  + '-' + @product.id.to_s
    rvp = session.fetch('recently_viewed_products', [])
    rvp = rvp.split(',') unless rvp.is_a? Array
    rvp.delete(item)
    rvp.delete('Spree::Product-' + @product.product_id.to_s) if @product.is_a? Spree::Variant
    rvp << item unless rvp.include?(item)
    rvp_max_count = Spree::RecentlyViewed::Config[:recently_viewed_products_max_count] || 5
    rvp.delete_at(0) if rvp.size > rvp_max_count.to_i
    session['recently_viewed_products'] = rvp.join(',')
  end
  
end
