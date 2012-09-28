Spree::BaseHelper.module_eval do

  def get_recently_viewed_product_ids
    #session.fetch("recently_viewed_products", "").split(', ')
    rvp = session.fetch('recently_viewed_products', [])
    rvp = rvp.split(',') unless rvp.is_a? Array
    rvp
  end

  def get_recently_viewed_products
    p_map = get_recently_viewed_product_ids
    return p_map unless p_map.any?

    rvp = Array.new(p_map.size) if p_map.any?

    product_ids, variant_ids = [], []
    p_map.each do |product|
      type, id = product.split('-')
      product_ids << id.to_i if type == 'Spree::Product'
      variant_ids << id.to_i if type == 'Spree::Variant'
    end

    products, variants = [], []
    products = Spree::Product.find_by_array_of_ids(product_ids)
    variants = Spree::Variant.find_by_array_of_ids(variant_ids)

    products_and_variants = products + variants

    products_and_variants.each do |product|
      next if product.nil?
      rvp[p_map.find_index(product.class.name + '-' + product.id.to_s)] = product
    end

    rvp
  end

end
