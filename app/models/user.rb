class User < ApplicationRecord
  has_many :super_dates
  has_many :supers, through: :super_dates

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
