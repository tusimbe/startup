class User < ActiveRecord::Base
  has_paper_trail
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #has_attached_file :avatar, 
  #                  styles: { medium: "300x300>", thumb: "100x100>" }, 
  #                  default_url: "/images/:style/missing.png"
  has_one :image, as: :imageable
  #validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
