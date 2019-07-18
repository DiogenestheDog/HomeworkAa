require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) do
    Dessert.new("cake", 5, "Ya")
  end
  let(:chef) { double("chef", :titleize => "Chef Ya the Great Baker") }

  describe "#initialize" do
    it "sets a type" do 
      expect(dessert.type).to eq("cake")
    end

    it "sets a quantity" do 
      expect(dessert.quantity).to eq(5)
    end
    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("meta_cake", "sleven", "Metaton") }.to raise_error(ArgumentError)
    end
  end


  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("καρπούζι")
      expect(dessert.ingredients).to eq(["καρπούζι"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("καρπούζι")
      dessert.add_ingredient("tears")
      dessert.add_ingredient("dreams")
      dessert.add_ingredient("aether")
      dessert.add_ingredient("void")
      dessert.add_ingredient("buddha hand")
      stuff = dessert.ingredients.dup
      dessert.mix!
      expect(stuff).to_not eq(dessert.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(2)
      expect(dessert.quantity).to eq(3)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect{dessert.eat(8)}.to raise_error
    end

  end

  describe "#serve" do
    
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to eq("Ya has made 5 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end

end
