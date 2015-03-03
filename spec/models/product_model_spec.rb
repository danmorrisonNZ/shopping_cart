require "rails_helper"

RSpec.describe Product, :type => :model do

  let(:product) {Product.create}

  describe 'name' do

    it 'exists' do
      expect(product.name).to_not be_nil
    end

    it 'is unique' do
      beef_sausage = Product.create(name: "sausage")
      chicken_sausage = Product.create(name: "sausage")
      expect(chicken_sausage).to be_nil
    end

  end


  describe 'price' do

    it 'exists' do
      expect(product.price).to_not be_nil
    end

    it 'is an integer' do
      expect(product.price).to be_an(Integer)
    end

  end


  describe '#format_price' do

    before do
      @cereal = Product.create(name: "cereal", price: 5.00)
    end

    it 'returns a string' do
      expect(@cereal.format_price).to be_a(String)
    end

    it 'has two decimal places' do
      expect(@cereal.format_price.split('.').last.length).to eq(2)
    end

    it 'begins with a dollar sign' do
      expect(@cereal.format_price[0]).to eq("$")
    end

    it 'conatins the same value as the original price' do
      expect(@cereal.format_price.delete('$').to_f).to eq(@cereal.price)
    end

  end


  describe 'description' do

    it 'exists' do
      expect(product.description).to_not be_nil
    end

    it 'is a string' do
      expect(product.description).to be_a(String)
    end

  end



end
