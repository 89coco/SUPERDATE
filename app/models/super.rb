class Super < ApplicationRecord
  belongs_to :user
  has_many :super_dates, dependent: :destroy

  validates :super_name, presence: true
  validates :super_type, presence: true
  # validates :availability, presence: true
  validates :price, presence: true
end
