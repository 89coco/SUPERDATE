class User < ApplicationRecord
  has_many :super_dates

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
