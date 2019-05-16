class Vinyl < ApplicationRecord
  belongs_to :user, :foreign_key => 'seller_id'
  mount_uploader :photo, PhotoUploader
end
