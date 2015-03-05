require "rails_helper"

RSpec.describe ProductsController, :type => :controller do

 let(:product_double) { double("product_double")}

   describe 'new' do

     before do
       allow(Product).to receive(:new).and_return(product_double)
       get :new
     end

     it 'creates a new product' do
       expect(assigns(:product)).to be(product_double)
     end

   end

   describe 'create' do

     before do
       allow(Product).to receive(:create).and_return(product_double)
       allow(product_double).to receive(:save).and_return(true)
     end

     it 'creates a new product' do
       post :create
       expect(assigns(:product)).to be(product_double)
     end

     it 'redirects to the correct url' do
       post :create
       expect(response).to redircet_to root_url
     end

   end

   describe 'edit' do

     let(:product) {double("Product", id: 1)}

     before do
       allow(Product).to receive(:find).with(1).and_return(product)
       get :edit, id: product.id
     end

     it 'finds the correct product' do
       expect(assigns(:current_product)).to be(product)
     end

     it 'displays the correct fields for editing' do
     end


     it 'redirects to the products url after editing' do
     end


   end


   describe 'delete' do

     it 'deletes the correct product from the database' do
     end

   end


end
