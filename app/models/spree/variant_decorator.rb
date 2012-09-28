Spree::Variant.class_eval do
  def self.find_by_array_of_ids(ids)
    variants = Spree::Variant.find(:all, conditions: ['id IN (?)', ids])
    ids.map{|id| variants.detect{|p| p.id == id.to_i}}.compact
  end
end
