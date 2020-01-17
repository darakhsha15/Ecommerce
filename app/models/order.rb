class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products
  accepts_nested_attributes_for :order_products
  accepts_nested_attributes_for :products
  validates :order_type, presence: true

end
