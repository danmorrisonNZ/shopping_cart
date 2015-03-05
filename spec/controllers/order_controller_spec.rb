require "rails_helper"

RSpec.describe OrdersController, :type => :controller do

   describe 'index' do

     let(:order_double) {double("order_1")}

     before do
       get :index
     end

     it 'returns all Orders' do
       expect(Order).to receive(:all).and_return(order_double)
     end

     it 'gives a 200 ok status' do
       expect(response).to have_http_status(200)
     end

     it 'renders the index view' do
       expect(response).to render_template(:index)
     end


   end


   describe 'show' do

    let(:order_double) {double("order_2", id: 1)}

     before do
       allow(Order).to receive(:find).with(order_double.id).and_return(order_double)
       get :show, id: order_double.id
     end

     it 'finds a single product' do
       expect(Order).to receive(:find).with(order_double.id)
     end

     it 'returns a single product' do
       expect(assigns(:product)).to be(order_double)
     end

     it 'renders the show view' do
       expect(response).to render_template(:show)
     end

     it 'gives a 200 ok status' do
       expect(response).to have_http_status(200)
     end

   end


   describe 'edit' do

   let(:order) {double("Order", id: 1)}

     before do
       allow(Order).to receive(:find).with(1).and_return(order)
       get :edit, id: order.id
     end

     it 'calls find on class Product' do
       expect(Order).to receive(:find)
     end

     it 'finds the correct product' do
       expect(assigns(:current_order)).to be(order)
     end

     it 'finds a single product' do
       expect(Order).to receive(:find).with(order.id)
     end

     it 'returns a single product' do
       expect(assigns(:order)).to be(order)
     end

     it 'renders the show view' do
       expect(response).to render_template(:edit)
     end

     it 'gives a 200 ok status' do
       expect(response).to have_http_status(200)
     end

   end


   describe 'update' do

     it ''

   end


   describe 'destroy' do
   end

end
