class Product < ApplicationRecord
    belongs_to :user
    attr_accessor :orders_attributes, :order_products_attributes
    has_many :order_products
    has_many :orders, through: :order_products
    validates :name, presence: true
    
end
