class Super < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many_attached :photos
  belongs_to :user
  has_many :super_dates, dependent: :destroy

  validates :super_name, presence: true
  validates :super_type, presence: true
  # validates :availability, presence: true
  validates :price, presence: true
end
