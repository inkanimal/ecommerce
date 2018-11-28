class Product < ApplicationRecord

  mount_uploader :image, ImageUploader
  serialize :image, JSON # If you use SQLite, add this line

  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories

  has_many :orders
  has_many :users, through: :orders

end
