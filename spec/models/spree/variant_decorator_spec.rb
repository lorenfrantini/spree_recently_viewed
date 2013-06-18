require 'spec_helper'

describe Spree::Variant do
  before do
    3.times { create(:variant) }
  end

  context "find_by_array_of_ids" do
    it "return the products specified in the array of product ids" do
      variant_ids = Spree::Variant.limit(2).map(&:id)
      variants = Spree::Variant.find_by_array_of_ids(variant_ids)
      variants.size.should == 2
    end

    it "ignore nonexistant variant ids and still return correctly specified variants" do
      variant_ids = Spree::Variant.limit(2).map(&:id) << 200
      variants = Spree::Variant.find_by_array_of_ids(variant_ids)
      variants.size.should == 2
    end

    it "return an empty array when no valid ids are specified" do
      variants = Spree::Variant.find_by_array_of_ids([200])
      variants.should == []
    end
  end
end
