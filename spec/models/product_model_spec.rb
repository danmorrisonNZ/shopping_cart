require "rails_helper"

RSpec.describe Product, :type => :model do

  let(:product) {Product.create}


  describe 'name' do

    it 'exists' do
      expect(product.name).to_not be_nil
    end

    it 'is unique' do
    end

  end


  describe 'price' do

    it 'exists' do
    end

    it 'is an integer' do
    end

  end


  describe '#format_price' do

    it 'returns a string' do
    end

    it 'has two decimal places' do
    end

    it 'begins with a dollar sign' do
    end

    it 'conatins the same value as the original price' do
    end

  end


  describe 'description' do

    it 'exists' do
    end

    it 'is a string' do
    end

  end



end
