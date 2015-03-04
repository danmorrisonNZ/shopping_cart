require 'rails_helper'

RSpec.describe Order, :type => :model do

  before do
    @order = Order.create()
    @order.products.create(name:"banana" ,price: 1.00 ,description:"Its a god damn banana")
    @order.products.create(name:"apple" ,price: 1.90 ,description:"Aporo")
    @order.total_price = @order.sum_prices
    @order.item_count = @order.count_items
  end

  describe 'total_price' do

    it 'exists' do
      expect(@order.total_price).to_not be_nil
    end

    it 'is the sum of all prices associated with the order' do
      expect(@order.total_price).to eq(2.90)
    end

    describe 'formatting' do

      let(:price) {@order.format_price}

      it 'produces the price as a string' do
        expect(price).to be_a(String)
      end

      it 'is formatted with a dollar sign' do
        expect(price[0]).to eq('$')
      end

      it 'is rounded to two decimal places' do
        expect(price.split('.').last.length).to eq(2)
      end

    end

  end


  describe 'item_count' do

    it 'exists' do
    end

    it 'produces the count as a string' do
    end

    it 'is the sum of the number of items in an order' do
    end


  end

end
