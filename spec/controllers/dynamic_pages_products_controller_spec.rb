require 'spec_helper'

describe DynamicPagesProductsController do

  describe "GET 'smartphones'" do
    it "returns http success" do
      get 'smartphones'
      response.should be_success
    end
  end

  describe "GET 'tablets'" do
    it "returns http success" do
      get 'tablets'
      response.should be_success
    end
  end

  describe "GET 'accessories'" do
    it "returns http success" do
      get 'accessories'
      response.should be_success
    end
  end

end
