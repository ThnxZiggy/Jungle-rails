require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # before do
    #   category = Category.new('trees')
    #   product = Product.new(name: 'test', price: '100', quantity: '2', category: 'trees')
    # end
    
    it 'validates when all fields have values' do
      product = Product.new(name: 'test', price: 10, quantity: 10, category: 'trees')
      expect(:name, :price, :quantity, :category).to be_truthy
    end

    it 'fails when name is missing' do
      product = Product.new(name: nil, price: 10, quantity: 10, category: 'trees')
      expect(:name).errors.full_messages
      expect(:price, :quantity, :category).to be_truthy
    end

    it 'fails when price is missing' do
      product = Product.new(name: 'test', price: nil, quantity: 10, category: 'trees')
      expect(:price).errors.full_messages
      expect(:name, :quantity, :category).to be_truthy
    end

    it 'fails when quantity is missing' do
      product = Product.new(name: 'test', price: 10, quantity: nil, category: 'trees')
      expect(:quantity).errors.full_messages
      expect(:price, :name, :category).to be_truthy
    end

    it 'fails when category is missing' do
      product = Product.new(name: 'test', price: 10, quantity: 10, category: nil)
      expect(:category).errors.full_messages
      expect(:price, :quantity, :name).to be_truthy
    end
  end
end
