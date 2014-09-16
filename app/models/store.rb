class Store < ActiveRecord::Base
  has_many :images, as: :imageable
  has_many :products
end
