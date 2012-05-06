require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :mark => "MyString",
      :model => "MyString",
      :price => 1.5,
      :description => "MyText",
      :type => 1,
      :image => "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_mark", :name => "product[mark]"
      assert_select "input#product_model", :name => "product[model]"
      assert_select "input#product_price", :name => "product[price]"
      assert_select "textarea#product_description", :name => "product[description]"
      assert_select "input#product_type", :name => "product[type]"
      assert_select "input#product_image", :name => "product[image]"
    end
  end
end
