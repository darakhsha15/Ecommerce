class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products
  accepts_nested_attributes_for :order_products
  accepts_nested_attributes_for :products
  validates :order_type, presence: true

  after_create :cal_total
  private
  def cal_total
    self.payable_price = 0
    self.order_products.each do |order| 
    self.payable_price+= order.product.price * order.qty
  end
  update_attributes(:payable_price=>self.payable_price)
  end 
end

