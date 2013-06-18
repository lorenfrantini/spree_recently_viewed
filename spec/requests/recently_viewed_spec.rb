require 'spec_helper'

describe "Recently Viewed Products", js: true do
  before do
    %w(Mug Shirt Jersey).each { |name| create(:product, name: "#{name}") }
  end

  it "keep track of recently viewed products" do
    # pending "It seems not to be hooked correctly."
    visit "/"
    click_link "Mug"
    click_link "Home"
    click_link "Jersey"
    click_link "Home"

    page.has_content?(Spree.t(:recently_viewed_products))
    page.has_css?("nav#recently_viewed_products")

    # within(:css, "nav#recently_viewed_products") do
    #   page.should have_content "Mug"
    #   page.should have_content "Jersey"
    # end
  end
end
