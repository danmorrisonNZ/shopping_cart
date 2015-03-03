require "rails_helper"

RSpec.describe Product, :type => :model do

  it 'creates a new Product' do
    gouda = Product.new
    expect(gouda).should_not be_nil
  end

end
