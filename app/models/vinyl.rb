class Vinyl < ApplicationRecord
  include Filterable

  scope :named, -> (named) { where("name ILIKE ?", "%#{named}%") }
  scope :artist, -> (artist) { where("artist ILIKE ?", "%#{artist}%") }
  scope :genre, -> (genre) { where(genre: genre) }
  scope :min_price, -> (min_price) { where("price < ?", "#{min_price}") }
  scope :max_price, -> (max_price) { where("price < ?", "#{max_price}") }
  belongs_to :seller, :foreign_key => 'seller_id', class_name: "User"
  has_one :purchase
  mount_uploader :photo, PhotoUploader
  validates :media_link, format: { with: /.*:album:.*|/ , message: "must be a Spotify Album URI" }
  validates :price, presence: true

  def sold?
    !purchase.nil?
  end
end
