require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Ratatouille") }
  subject(:dessert) { Dessert.new("chocolate", 10, chef) }

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

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("chocolate", "lots", chef) }.to raise_exception
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
    let(:ingredients) { %w(sugar flour salt chocolate) }
    before(:each) do
      ingredients.each { |i| dessert.add_ingredient(i) }
      dessert.mix!
    end
    subject { dessert.ingredients }

    it "shuffles the ingredient array" do
      expect(subject).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    before(:each) { dessert.eat(2) }
    subject { dessert.quantity }

    it "subtracts an amount from the quantity" do
      expect(subject).to eq(8)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(20) }.to raise_exception
    end
  end

  describe "#serve" do
    let(:title_chef) { "Chef" }

    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return(title_chef)
      expect(dessert.serve).to include(title_chef)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
