require "rails_helper"

RSpec.describe ProductsController, :type => :controller do

 # let(:product_double) { double("product_double")}
 #
 #   describe 'new' do
 #
 #     before do
 #       allow(Product).to receive(:new).and_return(product_double)
 #       get :new
 #     end
 #
 #     it 'creates a new product' do
 #       expect(assigns(:product)).to be(product_double)
 #     end
 #
 #   end
 #
 #
 #   describe 'create' do
 #
 #     before do
 #       allow(Product).to receive(:create).and_return(product_double)
 #       allow(product_double).to receive(:save).and_return(true)
 #     end
 #
 #     it 'creates a new product' do
 #       post :create
 #       expect(assigns(:product)).to be(product_double)
 #     end
 #
 #     it 'redirects to the correct url' do
 #       post :create
 #       expect(response).to redirect_to root_url
 #     end
 #
 #   end
 #
 #
 #   describe 'edit' do
 #
 #     let(:product) {double("Product", id: 1)}
 #
 #     before do
 #       allow(Product).to receive(:find).with(1).and_return(product)
 #       get :edit, id: product.id
 #     end
 #
 #     it 'calls find on class Product' do
 #       expect(Product).to receive(:find)
 #     end
 #
 #     it 'finds the correct product' do
 #       expect(assigns(:current_product)).to be(product)
 #     end
 #
 #   end


   describe 'index' do

     let(:product_double) {double("apple")}

     before do
       get :index
     end

     it 'returns all products' do
       expect(Product).to receive(:all).and_return(product_double)
     end

     it 'gives a 200 ok status' do
       expect(response).to have_http_status(200)
     end

     it 'renders the index view' do
       expect(response).to render_template(:index)
     end


   end


   describe 'show' do

    let(:product_double) {double("bananna", id: 1)}

     before do
       allow(Product).to receive(:find).with(product_double.id).and_return(product_double)
       get :show, id: product_double.id
     end

     it 'finds a single product' do
       expect(Product).to receive(:find).with(product_double.id)
     end

     it 'returns a single product' do
       expect(assigns(:product)).to be(product_double)
     end

     it 'renders the show view' do
       expect(response).to render_template(:show)
     end

     it 'gives a 200 ok status' do
       expect(response).to have_http_status(200)
     end

   end



end
