class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :vinyls, :foreign_key => 'seller_id', class_name: "Vinyl"
  has_many :sells, through: :vinyls, :foreign_key => 'vinyl_id', source: :purchase
  has_many :reviews, through: :sells, source: :review
  has_many :purchases, :foreign_key => 'buyer_id', class_name: "Purchase"
  mount_uploader :photo, PhotoUploader
end
