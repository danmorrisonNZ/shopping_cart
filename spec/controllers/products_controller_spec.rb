require "rails_helper"

RSpec.describe ProductsController, :type => :controller do

 let(:item_double) { double("item_double")}

   before do
     allow(Product).to receive(:new).and_return(item_double)
     get :new
   end

   it 'creates a new product' do
     expect(assigns(:product)).to be(item_double)
   end


   



end
