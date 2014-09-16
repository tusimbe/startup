class Product < ActiveRecord::Base
  belongs_to :store
  has_many :images, as: :imageable
end
