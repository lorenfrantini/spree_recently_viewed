require 'spec_helper'

describe "Recently Viewed Products" do
  before do
    product1 = create(:product, name: "Mug")
    product2 = create(:product, name: "Shirt")
    product3 = create(:product, name: "Jersey")
  end

  it "should keep track of recently viewed products" do
    pending "Need live test so it's defaced correctly."
    visit "/" # root_path
    click_link "Mug"
    click_link "Home"
    click_link "Jersey"
    click_link "Home"
    within(:css, "ul#recently_viewed_products") do
      page.should have_content "Mug"
      page.should have_content "Jersey"
    end
  end
end
