require 'spec_helper'

describe Spree::Admin::ProductsController do
  stub_authorization!

  before { controller.stub spree_current_user: create(:user) }

  context "#recently_viewed" do
  end
end
