class Tweet < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :brand
  belongs_to :camera
  belongs_to :sensor
  belongs_to :resolution
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :text
    validates :brand_id
    validates :camera_id
    validates :sensor_id
    validates :resolution_id
    validates :price
  end
end
