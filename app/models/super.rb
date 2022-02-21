class Super < ApplicationRecord
  belongs_to :user
  has_many :super_dates
end
