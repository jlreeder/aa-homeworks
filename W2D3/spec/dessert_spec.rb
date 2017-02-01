require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:type) { "chocolate" }
  let(:quantity) { 10 }
  subject(:dessert) { Dessert.new(type, quantity, chef) }

  describe "#initialize" do

    it "sets a type" do
      expect(dessert.type).to eq("chocolate")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    let(:wrong_quantity) { "lots" }
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new(type, wrong_quantity, chef) }.to raise_exception
    end
  end

  describe "#add_ingredient" do
    let(:fondent) { "fondent" }
    before(:each) { dessert.add_ingredient(fondent) }

    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to include(fondent)
    end

  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
