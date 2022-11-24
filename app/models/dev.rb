class Dev < ApplicationRecord
  has_many :jobs
  has_many :reviews, through: :jobs
  has_one_attached :photo
end
