class Flat < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  validates :title, presence: true
  validates :description, presence: true
  mount_uploader :photo, PhotoUploader
end
