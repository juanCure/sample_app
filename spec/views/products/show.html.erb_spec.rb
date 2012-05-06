require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :mark => "Mark",
      :model => "Model",
      :price => 1.5,
      :description => "MyText",
      :type => 1,
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Mark/)
    rendered.should match(/Model/)
    rendered.should match(/1.5/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Image/)
  end
end
