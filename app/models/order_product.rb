class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
  #accepts_nested_attributes_for :products
  #attr_accessor :products_attributes
end
