require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end


  
    describe '#id' do

    it 'id should be nil without save' do
      @product = Product.new
      expect(@product.id).to be_nil
    end

    it 'should be auto-assigned by AR for saved records' do
      @product = Product.new
      @product.save!
      expect(@product.id).to be_present
    end

    it 'should have a name' do
      @product = Product.new
      @product.name = "Bits n Bites"
      @product.save!
      expect(@product.name).to be_present
    end

    it 'should have a price' do
      @product = Product.new
      @product.price_cents = 1000000
      @product.save!
      expect(@product.price_cents).to be_present
    end

    it 'should have a quantity' do
      @product = Product.new
      @product.quantity = 11000
      expect(@product.quantity).to be_present
    end

    it 'should have a category' do
      @product = Product.new
      @product.category_id = 3
      expect(@product.category_id).to be_present
    end
  end