class Product < ApplicationRecord
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  # def categories
  #   category_products.map do |category_product|
  #     category_product.category
  #   end
  # end

  # validates :price, presence: true
  # validates :price, numericality: { greater_than: 0 }

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def images
    Image.where(product_id: id)
  end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
